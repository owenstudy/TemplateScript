#!/usr/bin/env python3
# -*- coding: utf-8 -*-

__author__ = 'Owen_Study/owen_study@126.com'

import re,os
import template

''' 传入mapping column list列表'''
class TemplateScript(object):
    def __init__(self,mapping_file_name):
        mapping_template=template.Template(mapping_file_name)
        self.__mapping_column_list=mapping_template.get_mapping_cols()
        #所有的template 表名
        self.__table_list=self.__get_table_list()
        self.__module_name = mapping_file_name
        #date format
        self.__date_format='yyyy/mm/dd'
        #保存公用的Sql
        self.__insert_result_sql='insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)\n'

    def test(self):
        #self.__get_table_list()
        script=self.__create_template_script()
        print(script)
        script=self.public_function()
        print(script)
        script=self.gen_veri_template_script()
        print(script)


    '''取得所有的表名'''
    def __get_table_list(self):
        table_list=[]
        for row in self.__mapping_column_list:
            if row.tableName:
                table_list.append(row.tableName)
        key_table_list=list(set(table_list))
        return key_table_list
        pass


    '''创建校验数据的结果表'''
    def create_veri_result_table(self):
        create_table_script="""
        drop table dm_template_veri;
        create table dm_template_veri(module_name varchar2(100), table_name varchar2(100),
        column_name varchar2(100),veri_code varchar2(100),veri_result number);
        """
        return create_table_script
        pass
    '''校验中使用到的公共函数'''
    def public_function(self):
        public_function_script="""
        Create Or Replace Function F_IS_NUMBER (STR_NUMBER Varchar2)
                    Return Number
                Is
                    V_RESULT   Integer;
                    V_NUMBER   Number;
                Begin
                    V_RESULT := 1;
                    V_NUMBER := To_number (STR_NUMBER);
                    V_RESULT := 0;
                    Return (V_RESULT);
                Exception
                    When Others
                    Then
                        V_RESULT := 1;
                        Return (V_RESULT);
                End;\n
                /
        """
        public_function_script=public_function_script+"""
        Create Or Replace Function F_IS_DATE (STR_DATE Varchar2)
                Return Number
            Is
                V_RESULT   Integer;
                V_DATE     Date;
            Begin
                V_RESULT := 1;
                V_DATE := To_date (STR_DATE, 'mm/dd/yyyy');
                V_RESULT := 0;
                Return (V_RESULT);
            Exception
                When Others
                Then
                    V_RESULT := 1;
                    Return (V_RESULT);
            End;\n
            /
        """
        return public_function_script

    '''生成创建template表的脚本'''
    def __create_template_script(self):
        script=None
        all_table_script=''
        for table_name in self.__table_list:
            script='drop table '+table_name+';\n'
            script=script+'create table '+table_name +'(\n'
            for row in self.__mapping_column_list:
                if row.tableName==table_name:
                    #调整字段的长度，使脚本对齐美观
                    script=script+row.columnName.ljust(30)
                    #为空的长度也都设置为默认300
                    try:
                        #处理字段长度，如果是纯数字的，如果超过300则用定义的值，否则用默认值，确保有超过300长度的创建表是正确的
                        data_length=self.__get_data_length(row.length)
                        if data_length!=None:
                            if data_length>300:
                                col_len=data_length
                            else:
                                col_len=300
                        else:
                            col_len=300

                        # 创建主键的索引
                        if row.primaryKey=='Y':
                            primary_key=' primary key'
                        else:
                            primary_key=''
                        script = script + ' varchar2(%d) %s'%(col_len,primary_key)
                    except Exception as e:
                        print('创建Template表时出现错误： '+str(e))
                    script=script+',\n'
            script=script[0:len(script)-2]+'\n);'
            all_table_script=all_table_script+script+'\n'
        return all_table_script
        pass

    '''生成每个表的控件文件，每个表生成一个单独的文件'''
    ''' control file sample
    load data
	infile 'li_clt_adr.unl.tab'
	replace into table li_clt_adr
	fields terminated by '|' TRAILING NULLCOLS
	(	                           
    clt_num		"TRIM(:clt_num		)",
    adr_num		"TRIM(:adr_num		)",
    adr_fmt		"TRIM(:adr_fmt		)"
    )
    '''
    def __create_control_file(self, table_name, file_name, column_list, column_split = '|'):
        control_file_format='load data \n'+\
                        "infile '{0}'\n"+\
                        "replace into table {1}\n"+\
                        "fields terminated by '{2}' trailing nullcols\n"+\
                        "(\n{3}\n)"
        control_file_format=control_file_format.format(file_name,table_name,column_split,column_list)
        return control_file_format
    '''运行sqlldr的文件'''
    def __sqlldr_run_script(self, table_name):
        sqlldr_script_format = "sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=./controlfiles/{0}.ctl BAD=./bad/{0}.bad LOG=./log/{0}.log"
        sqlldr_script= sqlldr_script_format.format(table_name.lower())
        return sqlldr_script
    '''清除已经生成的sqlldr加载文件'''
    def clear_sqlldr_file(self):
        try:
            sqlldr_win_file_name='./sqlldr/01loadingdata.bat'
            sqlldr_linux_file_name ='./sqlldr/01loadingdata.sh'
            if os.path.exists(sqlldr_win_file_name):
                os.remove(sqlldr_win_file_name)
            if os.path.exists(sqlldr_linux_file_name):
                os.remove(sqlldr_linux_file_name)
        except:
            pass
    '''生成sqlldr windows格式的加载命令'''
    def __save_sqlldr(self, file_content, os_type = 'win',  nls_lang= None):
        # windows
        nls_lang_format='{0} NLS_LANG={1}\n'
        default_lang='AMERICAN_AMERICA.ZHS16GBK'
        file_name_format='./sqlldr/01loadingdata.{0}'
        # 创建两个目录存放bad&log
        if os.path.exists('./sqlldr/bad/') is False:
            os.mkdir('./sqlldr/bad/')
        if os.path.exists('./sqlldr/log/') is False:
            os.mkdir('./sqlldr/log/')
        if os.path.exists('./sqlldr/datafiles/') is False:
            os.mkdir('./sqlldr/datafiles/')
        if os_type == 'win':
            file_name = file_name_format.format('bat')
            remark_str = '--'
            if nls_lang == None:
                nls_lang_used = nls_lang_format.format('set', default_lang)
            else:
                nls_lang_used = nls_lang_format.format('set', nls_lang)
        else:
            remark_str = '#'
            file_name = file_name_format.format('sh')
            if nls_lang == None:
                nls_lang_used = nls_lang_format.format('export', default_lang)
            else:
                nls_lang_used = nls_lang_format.format('export', nls_lang)
        # 如果文件已经 存在 则只写入内容，不写入语言的头信息
        if os.path.exists(file_name):
            sqlldr_file = open(file_name, 'a')
        else:
            sqlldr_file = open(file_name, 'a')
            # 写入语言信息
            sqlldr_file.write(nls_lang_used)
        # 写入模块信息
        sqlldr_file.write(remark_str+self.__module_name+'\n')

        # 写入每个文件的加载语句
        sqlldr_file.write(file_content)
        sqlldr_file.close()
        pass
    '''生成全部的控制文件'''
    def gen_control_files(self, file_ext_name = 'txt', column_split = '|', nls_lang = 'AMERICAN_AMERICA.ZHS16GBK'):
        sqlldr_scripts = ''
        # 创建sqlldr目录存放所有的加载相关的文件
        if os.path.exists('./sqlldr/') is False:
            os.mkdir('./sqlldr/')
        # 创建controlfiles保存所有的控件文件
        if os.path.exists('./sqlldr/controlfiles/') is False:
            os.mkdir('./sqlldr/controlfiles/')
        # sqlldr $USR_target/$PWD_target DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=li_pln.ctl BAD=li_pln.bad LOG=li_pln.log
        for table_name in self.__table_list:
            one_column_list_format = '{0} \"TRIM(:{1})\",\n'
            all_column_list = ''
            for row in self.__mapping_column_list:
                if row.tableName == table_name:
                    # 每个列一行组成列的字符串
                    one_column_list = one_column_list_format.format(row.columnName.ljust(30), row.columnName.ljust(30))
                    all_column_list = all_column_list + one_column_list
            # 去除最后一行的,
            all_column_list = all_column_list[0:len(all_column_list) - 2]
            lower_table_name=table_name.lower()
            # 每个表生成一个文件
            control_file_content=self.__create_control_file(lower_table_name, './datafiles/'+lower_table_name+ '.' + file_ext_name, all_column_list, column_split)
            # 保存到文件中
            control_file_name= './sqlldr/controlfiles/' + lower_table_name+'.ctl'
            control_file=open(control_file_name, 'w')
            control_file.write(control_file_content)
            control_file.close()
            # 保存sqlldr的运行命令
            sqlldr_scripts = sqlldr_scripts + self.__sqlldr_run_script(lower_table_name)+'\n'
        # 保存sqlldr的执行文件到文件中，保存两个版本，一个是windows，一个是linux
        self.__save_sqlldr(sqlldr_scripts,'win', nls_lang)
        self.__save_sqlldr(sqlldr_scripts,'linux', nls_lang)
        # print(control_file_content)

        return all_column_list

        pass
    '''取得传进来值的长度'''
    def __get_data_length(self,data_length):
        col_len=data_length
        if type(data_length)==type(123):
            col_len= data_length
        elif type(data_length)==type('str'):
            if re.match('^\d+$', data_length) != None:
                col_len = int(data_length)
            else:
                col_len=None
        elif data_length==None:
            pass
        else:
            print('数据长度字段的值:%s是未知道的类型!'%type(data_length))
            col_len=None
        return col_len

    '''取得表的主键字段名称'''
    def __get_pk_column_name(self,table_name):
        for row in self.__mapping_column_list:
            if row.tableName==table_name and row.primaryKey=='Y':
                return row.columnName
        return None

    '''校验外键,template表之间的校验'''
    def __get_foreign_key_sql(self,module_name,table_name, column_name, refertable):
        need_verify = True
        if refertable:
            #只校验template之间的外銉关系
            if refertable[0:2]!='DM_':
                return ''
        else:
            return ''
        # 取得外键表的主键
        pk_column_name=self.__get_pk_column_name(table_name)
        if refertable :
            veri_code = 'VERI_FOREIGN_KEY_TEMPLATE'
            where_sql = ' where (select not exists(select 1 from %s  b where %s.%s=b.%s)'%\
                        (table_name,table_name,column_name,pk_column_name)
        else:
            need_verify = False

        if need_verify:
            # 生成校验语句并把结果放到表中
            insert_result = self.__insert_result_sql
            veri_sql = 'select \'%s\' as module_name,\'%s\' as table_name,\'%s\' as column_name,\'%s\' as veri_code,count(*) as veri_result from %s\n' % \
                       (module_name, table_name, column_name, veri_code, table_name)
            veri_sql = insert_result + veri_sql + where_sql + ';\n'
        else:
            veri_sql = ''

        return veri_sql

    ''' 校验唯一键数据'''
    def __get_unique_sql(self,module_name,table_name, column_name,primarykey):
        need_verify = True
        if primarykey == 'Y':
            veri_code = 'VERI_UNIQUE'
            where_sql = ' where (select count(*) from %s  b where %s.%s=b.%s)>1'%\
                        (table_name,table_name,column_name,column_name)
        else:
            need_verify = False

        if need_verify:
            # 生成校验语句并把结果放到表中
            insert_result = self.__insert_result_sql
            veri_sql = 'select \'%s\' as module_name,\'%s\' as table_name,\'%s\' as column_name,\'%s\' as veri_code,count(*) as veri_result from %s\n' % \
                       (module_name, table_name, column_name, veri_code, table_name)
            veri_sql = insert_result + veri_sql + where_sql + ';\n'
        else:
            veri_sql = ''

        return veri_sql

    '''校验非空数据'''
    def __get_nullable_sql(self,module_name,table_name, column_name,nullable):
        need_verify = True
        if nullable == 'NOT NULL':
            veri_code = 'VERI_NON_NULLABLE'
            where_sql = ' where %s is  null' % (column_name)
        else:
            need_verify = False

        if need_verify:
            # 生成校验语句并把结果放到表中
            insert_result = self.__insert_result_sql
            veri_sql = 'select \'%s\' as module_name,\'%s\' as table_name,\'%s\' as column_name,\'%s\' as veri_code,count(*) as veri_result from %s\n' % \
                       (module_name, table_name, column_name, veri_code, table_name)
            veri_sql = insert_result + veri_sql + where_sql + ';\n'
        else:
            veri_sql = ''

        return veri_sql

    '''得到verifi sql，只校验数据类型'''
    def __get_data_type_sql(self,module_name,table_name, column_name,data_type, data_length):
        # 数据类型的校验
        need_verify = True
        data_length_int=self.__get_data_length(data_length)
        if data_type == 'NUMBER' :
            veri_code = 'VERI_NUMBER_ILLEGAL'
            where_sql = ' where f_is_number(%s)=1 and %s is not null' % (column_name, column_name)
        elif data_type == 'DATE':
            veri_code = 'VERI_DATE_ILLEGAL'
            where_sql = ' where f_is_date(%s)=1 and %s is not null' % (column_name, column_name)
        elif data_type == 'VARCHAR2' and data_length_int:
            veri_code = 'VERI_STRING_LENGTH_OVER_DEF'
            where_sql = ' where length(%s)>%d and %s is not null' % (column_name, data_length_int, column_name)
        else:
            need_verify=False

        if need_verify:
            # 生成校验语句并把结果放到表中
            insert_result = self.__insert_result_sql
            veri_sql = 'select \'%s\' as module_name,\'%s\' as table_name,\'%s\' as column_name,\'%s\' as veri_code,count(*) as veri_result from %s\n' % \
                       (module_name, table_name, column_name, veri_code, table_name)
            veri_sql = insert_result + veri_sql + where_sql+';\n'
        else:
            veri_sql=''

        return veri_sql

    '''校验字段的数据类型，长度，是否可为空,FK引用'''
    def gen_veri_template_script(self):
        total_veri_sql = ''
        for table_name in self.__table_list:
            for row in self.__mapping_column_list:
                # 每个表单独一起处理
                if row.tableName == table_name:
                    # 基础 的数据类型校验
                    base_script=self.__get_data_type_sql(row.moduleName,row.tableName,row.columnName,row.dataType,row.length)
                    total_veri_sql=total_veri_sql+base_script
                    # 非空校验
                    nonnullable_sql=self.__get_nullable_sql(row.moduleName,row.tableName,row.columnName,row.nullable)
                    total_veri_sql = total_veri_sql + nonnullable_sql
                    # 主键/唯一类型校验
                    unique_sql=self.__get_unique_sql(row.moduleName,row.tableName,row.columnName,row.primaryKey)
                    total_veri_sql = total_veri_sql + unique_sql
                    # 外键类型校验，只校验template之间的关系，代码表由于字段名称不统一，目前 还没有办法把校验加进来
                    fk_sql=self.__get_foreign_key_sql(row.moduleName,row.tableName,row.columnName,row.referTable)
                    total_veri_sql = total_veri_sql + fk_sql
                    pass
        total_veri_sql=total_veri_sql+'\n commit;\n'

        return total_veri_sql
        pass

    '''生成公共函数的脚本'''
    def save_public_script(self, file_name):
        script_file = open(file_name, 'w')
        # 创建保存校验结果的表
        create_table_script_result = self.create_veri_result_table()
        # 创建校验过程中用到的一些函数
        public_function_script = self.public_function()
        # 保存到文件
        script_file.write(create_table_script_result)
        script_file.write(public_function_script)
        script_file.close()
        return public_function_script+'\n'+create_table_script_result

    '''把创建表脚本写入文件'''
    def save_template_create_script(self,file_name):
        script_file=open(file_name,'w')
        # Template表的创建脚本
        create_table_script_template=self.__create_template_script()

        script_file.write(create_table_script_template)
        script_file.close()
        return create_table_script_template
        pass
    '''把创建表脚本写入文件'''
    def save_template_veri_script(self,file_name):
        script_file=open(file_name,'w')
        # 校验脚本
        veri_script=self.gen_veri_template_script()

        script_file.write(veri_script)
        script_file.close()

        return veri_script
        pass
    ''' 创建执行所有脚本的文件'''
    def save_run_all_scripts(self,file_name,run_scripts):
        script_file=open(file_name,'w')
        script_file.write(run_scripts)
        script_file.close()

if __name__=='__main__':


    script=TemplateScript('./templates/UAL_Mapping_Party_V0.2.5.xlsx')
    script.clear_sqlldr_file()
    script.gen_control_files()
    # script.save_script('party.sql')