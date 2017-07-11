#!/usr/bin/env python3
# -*- coding: utf-8 -*-

__author__ = 'Owen_Study/owen_study@126.com'
import os
import veriscript

'''把脚本生成到脚本文件中'''
def generate_all_scripts():
    file_path='./templates/'
    all_templates_file=os.listdir(file_path)
    #公共函数生成的标志
    public_function_generated=False
    # 生成一次执行的脚本合集
    # 执行所有脚本的命令文件
    file_name_exec = file_path + 'run_all_scripts.sql'
    # 输入日志
    run_all_scripts='spool run_all_scripts.log\n'
    # 公共函数和创建表脚本，生成一个文件
    scripts_create_tables=''
    # 校验脚本生成一个文件
    scripts_veri=''
    for template in all_templates_file:
        file_ext=template.split('.')[len(template.split('.'))-1]
        # 文件没有扩展名
        file_name_create=file_path+template[:len(template)-len(file_ext)-1]+'_create.sql'
        file_name_veri = file_path + template[:len(template) - len(file_ext) - 1] + '_veri.sql'
        if file_ext=='xls' or file_ext=='xlsx':
            script_handler=veriscript.TemplateScript(file_path+template)
            #公共函数的脚本，只生成一次
            if not public_function_generated:
                public_function_file_name=file_path+'1-public_script.sql'
                public_scripts=script_handler.save_public_script(public_function_file_name)
                public_function_generated=True
                run_all_scripts = run_all_scripts + '@' + public_function_file_name.replace(file_path,'') + '\n'
                scripts_create_tables=scripts_create_tables+public_scripts+'\n'
            #模块的创建表和校验脚本
            create_table=script_handler.save_template_create_script(file_name_create)
            veri_table=script_handler.save_template_veri_script(file_name_veri)

            run_all_scripts=run_all_scripts+'@'+file_name_create.replace(file_path,'')+'\n'
            run_all_scripts = run_all_scripts + '@' + file_name_veri.replace(file_path,'') + '\n'
            # 创建表的脚本放在一个文件中
            scripts_create_tables = scripts_create_tables +'--'.rjust(20,'-')+file_name_create+'\n'
            scripts_create_tables=scripts_create_tables+create_table+'\n'

            # 校验数据的脚本放在一个文件中
            scripts_veri = scripts_veri +'--'.rjust(20,'-')+file_name_veri+'\n'
            scripts_veri=scripts_veri+veri_table+'\n'
            pass
        pass
    # 保存执行所有脚本的文件
    run_all_scripts = run_all_scripts + 'spool off' + '\n'
    # 保存创建表语句和公共语句
    script_handler.save_run_all_scripts('00initial_scripts.sql',scripts_create_tables)
    # 保存校验表的脚本
    script_handler.save_run_all_scripts('01veri_scripts.sql',scripts_veri)
    # 保存成多个文件 时的执行所有脚本的命令文件
    script_handler.save_run_all_scripts(file_name_exec,run_all_scripts)

if __name__=='__main__':
    generate_all_scripts()