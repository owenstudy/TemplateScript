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
        total_veri_sql=total_veri_sql+'\n commit;'

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

    '''把创建表脚本写入文件'''
    def save_template_create_script(self,file_name):
        script_file=open(file_name,'w')
        # Template表的创建脚本
        create_table_script_template=self.__create_template_script()

        script_file.write(create_table_script_template)
        script_file.close()
        pass
    '''把创建表脚本写入文件'''
    def save_template_veri_script(self,file_name):
        script_file=open(file_name,'w')
        # 校验脚本
        veri_script=self.gen_veri_template_script()

        script_file.write(veri_script)
        script_file.close()
        pass

if __name__=='__main__':
    script=TemplateScript('UAL_Mapping_Party_V0.2.4.xlsx')
    script.save_script('party.sql')