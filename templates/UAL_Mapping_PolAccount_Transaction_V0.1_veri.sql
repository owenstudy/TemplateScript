insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_POLICY_ACCOUNT_TRANS_LIST' as table_name,'LIST_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT_TRANS_LIST
 where f_is_number(LIST_ID)=1 and LIST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_POLICY_ACCOUNT_TRANS_LIST' as table_name,'LIST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT_TRANS_LIST
 where LIST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_POLICY_ACCOUNT_TRANS_LIST' as table_name,'LIST_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT_TRANS_LIST
 where (select count(*) from DM_POLICY_ACCOUNT_TRANS_LIST  b where DM_POLICY_ACCOUNT_TRANS_LIST.LIST_ID=b.LIST_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_POLICY_ACCOUNT_TRANS_LIST' as table_name,'ACCOUNT_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT_TRANS_LIST
 where f_is_number(ACCOUNT_ID)=1 and ACCOUNT_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_POLICY_ACCOUNT_TRANS_LIST' as table_name,'ACCOUNT_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT_TRANS_LIST
 where ACCOUNT_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_POLICY_ACCOUNT_TRANS_LIST' as table_name,'TRANS_CODE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT_TRANS_LIST
 where f_is_number(TRANS_CODE)=1 and TRANS_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_POLICY_ACCOUNT_TRANS_LIST' as table_name,'TRANS_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT_TRANS_LIST
 where TRANS_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_POLICY_ACCOUNT_TRANS_LIST' as table_name,'TRANS_AMOUNT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT_TRANS_LIST
 where f_is_number(TRANS_AMOUNT)=1 and TRANS_AMOUNT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_POLICY_ACCOUNT_TRANS_LIST' as table_name,'TRANS_AMOUNT' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT_TRANS_LIST
 where TRANS_AMOUNT is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_POLICY_ACCOUNT_TRANS_LIST' as table_name,'TRANS_TIME' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT_TRANS_LIST
 where f_is_date(TRANS_TIME)=1 and TRANS_TIME is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_POLICY_ACCOUNT_TRANS_LIST' as table_name,'TRANS_TIME' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT_TRANS_LIST
 where TRANS_TIME is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_POLICY_ACCOUNT_TRANS_LIST' as table_name,'CAPITAL_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT_TRANS_LIST
 where f_is_number(CAPITAL_ID)=1 and CAPITAL_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'CAPITAL_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where f_is_number(CAPITAL_ID)=1 and CAPITAL_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'CAPITAL_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where CAPITAL_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'CAPITAL_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where (select count(*) from DM_CAPITAL_DISTRIBUTE  b where DM_CAPITAL_DISTRIBUTE.CAPITAL_ID=b.CAPITAL_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'DISTRI_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where f_is_date(DISTRI_DATE)=1 and DISTRI_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'DISTRI_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where DISTRI_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'DISTRI_AMOUNT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where f_is_number(DISTRI_AMOUNT)=1 and DISTRI_AMOUNT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'DISTRI_AMOUNT' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where DISTRI_AMOUNT is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'DISTRI_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where length(DISTRI_TYPE)>3 and DISTRI_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'DISTRI_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where DISTRI_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'CAPITAL_SOURCE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where length(CAPITAL_SOURCE)>1 and CAPITAL_SOURCE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'CAPITAL_SOURCE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where CAPITAL_SOURCE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'ACCOUNTING_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where f_is_date(ACCOUNTING_DATE)=1 and ACCOUNTING_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'PAY_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where f_is_number(PAY_ID)=1 and PAY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'PAY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where PAY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'PAY_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where (select count(*) from DM_PAY_DUE  b where DM_PAY_DUE.PAY_ID=b.PAY_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'LIAB_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where f_is_number(LIAB_ID)=1 and LIAB_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'LIAB_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where LIAB_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'PAY_DUE_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where f_is_date(PAY_DUE_DATE)=1 and PAY_DUE_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'PAY_DUE_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where PAY_DUE_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'PAY_NUM' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where f_is_number(PAY_NUM)=1 and PAY_NUM is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'PAY_NUM' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where PAY_NUM is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'FEE_AMOUNT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where f_is_number(FEE_AMOUNT)=1 and FEE_AMOUNT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'FEE_AMOUNT' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where FEE_AMOUNT is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'PLAN_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where f_is_number(PLAN_ID)=1 and PLAN_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'FEE_STATUS' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where f_is_number(FEE_STATUS)=1 and FEE_STATUS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_PAY_DUE' as table_name,'FEE_STATUS' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_DUE
 where FEE_STATUS is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'ALLOCATE_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where f_is_number(ALLOCATE_ID)=1 and ALLOCATE_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'ALLOCATE_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where ALLOCATE_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'ALLOCATE_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where (select count(*) from DM_BONUS_ALLOCATE  b where DM_BONUS_ALLOCATE.ALLOCATE_ID=b.ALLOCATE_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'ALLOCATE_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where f_is_date(ALLOCATE_DATE)=1 and ALLOCATE_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'ALLOCATE_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where ALLOCATE_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'ALLOCATE_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where length(ALLOCATE_TYPE)>2 and ALLOCATE_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'ALLOCATE_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where ALLOCATE_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'MONEY_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where f_is_number(MONEY_ID)=1 and MONEY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'MONEY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where MONEY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'FEE_AMOUNT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where f_is_number(FEE_AMOUNT)=1 and FEE_AMOUNT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_Transaction_V0.1.xlsx' as module_name,'DM_BONUS_ALLOCATE' as table_name,'FEE_AMOUNT' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BONUS_ALLOCATE
 where FEE_AMOUNT is  null;

 commit;