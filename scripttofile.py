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
    for template in all_templates_file:
        file_ext=template.split('.')[len(template.split('.'))-1]
        # 文件没有扩展名
        file_name_create=file_path+template[:len(template)-len(file_ext)-1]+'_create.sql'
        file_name_veri = file_path + template[:len(template) - len(file_ext) - 1] + '_veri.sql'
        if file_ext=='xls' or file_ext=='xlsx':
            script_handler=veriscript.TemplateScript(file_path+template)
            #公共函数的脚本，只生成一次
            if not public_function_generated:
                script_handler.save_public_script(file_path+'1-public_script.sql')
                public_function_generated=True
            #模块的创建表和校验脚本
            script_handler.save_template_create_script(file_name_create)
            script_handler.save_template_veri_script(file_name_veri)

            pass
        pass

if __name__=='__main__':
    generate_all_scripts()