insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_SA_CHANGE' as table_name,'LIST_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_SA_CHANGE
 where f_is_number(LIST_ID)=1 and LIST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_SA_CHANGE' as table_name,'LIST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_SA_CHANGE
 where LIST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_SA_CHANGE' as table_name,'LIST_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_SA_CHANGE
 where (select count(*) from DM_SA_CHANGE  b where DM_SA_CHANGE.LIST_ID=b.LIST_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_SA_CHANGE' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_SA_CHANGE
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_SA_CHANGE' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_SA_CHANGE
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_SA_CHANGE' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_SA_CHANGE
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_SA_CHANGE' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_SA_CHANGE
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_SA_CHANGE' as table_name,'START_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_SA_CHANGE
 where f_is_date(START_DATE)=1 and START_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_SA_CHANGE' as table_name,'START_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_SA_CHANGE
 where START_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_SA_CHANGE' as table_name,'SA' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_SA_CHANGE
 where f_is_number(SA)=1 and SA is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_SA_CHANGE' as table_name,'UNIT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_SA_CHANGE
 where f_is_number(UNIT)=1 and UNIT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_SA_CHANGE' as table_name,'BENEFIT_LEVEL' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_SA_CHANGE
 where length(BENEFIT_LEVEL)>20 and BENEFIT_LEVEL is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'LIST_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where f_is_number(LIST_ID)=1 and LIST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'LIST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where LIST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'LIST_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where (select count(*) from DM_PRODUCT_LIABILITY_CHANGE  b where DM_PRODUCT_LIABILITY_CHANGE.LIST_ID=b.LIST_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'CHANGE_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where f_is_date(CHANGE_DATE)=1 and CHANGE_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'CHANGE_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where CHANGE_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'LIABILITY_STATUS' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where f_is_number(LIABILITY_STATUS)=1 and LIABILITY_STATUS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'LIABILITY_STATUS' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where LIABILITY_STATUS is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'LIABILITY_CHANGED' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where f_is_number(LIABILITY_CHANGED)=1 and LIABILITY_CHANGED is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'LIABILITY_CHANGED' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where LIABILITY_CHANGED is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'LAPSE_CAUSE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where f_is_number(LAPSE_CAUSE)=1 and LAPSE_CAUSE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_CS_V0.2.1.xlsx' as module_name,'DM_PRODUCT_LIABILITY_CHANGE' as table_name,'END_CAUSE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PRODUCT_LIABILITY_CHANGE
 where f_is_number(END_CAUSE)=1 and END_CAUSE is not null;

 commit;