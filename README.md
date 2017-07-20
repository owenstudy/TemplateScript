# TemplateScript
Template related script, including creating table, basic verification 
# 使用说明
  1. 只支持xlsx类型的excel,老格式的文件不支持，需要转换为最新的格式
  2. 文件的格式必须是标准的格式，mapping columns sheet名称一定要是MappingColumns
  3. MAPPING COLUMN的顺序必须是开始的前10列，顺序类型如下：
	Table Name	Column Name	Data Type	Length	Nullable	Key	Short 		Description	Descirption of Data Migration	Default Value	Reference Table
  4. 文件需要放在程序目录中的templates子目录，生成的脚本文件都在这个子目录
  5. 列的数据类型定义只支持三种类型的处理，DATE, NUMBER, VARCHAR2
  6. 运行的命令如下， python scripttofile.py
  7. 生成的创建表文件都是按固定长度300,以方便加载，如果有长度超过300的则使用template中的实际长度
  8. 生成sqlldr加载文件，并按目录进行分类存放

