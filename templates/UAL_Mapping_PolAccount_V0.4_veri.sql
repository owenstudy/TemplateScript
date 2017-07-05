insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'ACCOUNT_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where f_is_number(ACCOUNT_ID)=1 and ACCOUNT_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'ACCOUNT_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where ACCOUNT_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'ACCOUNT_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where (select count(*) from DM_POLICY_ACCOUNT  b where DM_POLICY_ACCOUNT.ACCOUNT_ID=b.ACCOUNT_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'ACCOUNT_TYPE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where f_is_number(ACCOUNT_TYPE)=1 and ACCOUNT_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'ACCOUNT_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where ACCOUNT_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'CAPITAL_BALANCE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where f_is_number(CAPITAL_BALANCE)=1 and CAPITAL_BALANCE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'CAPITAL_BALANCE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where CAPITAL_BALANCE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'INTEREST_CAPITAL' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where f_is_number(INTEREST_CAPITAL)=1 and INTEREST_CAPITAL is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'INTEREST_CAPITAL' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where INTEREST_CAPITAL is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'INTEREST_BALANCE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where f_is_number(INTEREST_BALANCE)=1 and INTEREST_BALANCE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'INTEREST_BALANCE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where INTEREST_BALANCE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'INTEREST_SUM' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where f_is_number(INTEREST_SUM)=1 and INTEREST_SUM is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'INTEREST_SUM' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where INTEREST_SUM is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'CAPITALIZED_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where f_is_date(CAPITALIZED_DATE)=1 and CAPITALIZED_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'CAPITALIZED_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where CAPITALIZED_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'BALANCE_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where f_is_date(BALANCE_DATE)=1 and BALANCE_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'BALANCE_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where BALANCE_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'INSERT_TIME' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where f_is_date(INSERT_TIME)=1 and INSERT_TIME is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_POLICY_ACCOUNT' as table_name,'UPDATE_TIME' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_ACCOUNT
 where f_is_date(UPDATE_TIME)=1 and UPDATE_TIME is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'PLAN_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where f_is_number(PLAN_ID)=1 and PLAN_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'PLAN_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where PLAN_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'PLAN_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where (select count(*) from DM_PAY_PLAN  b where DM_PAY_PLAN.PLAN_ID=b.PLAN_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'PAY_DUE_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where f_is_date(PAY_DUE_DATE)=1 and PAY_DUE_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'PAY_NUM' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where f_is_number(PAY_NUM)=1 and PAY_NUM is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'PAY_NUM' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where PAY_NUM is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'BEGIN_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where f_is_date(BEGIN_DATE)=1 and BEGIN_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'END_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where f_is_date(END_DATE)=1 and END_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'PAY_PLAN_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where PAY_PLAN_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'PAY_OPTION' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where length(PAY_OPTION)>2 and PAY_OPTION is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'PRE_ALLOC_DUE_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where f_is_date(PRE_ALLOC_DUE_DATE)=1 and PRE_ALLOC_DUE_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'PAY_YEAR' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where f_is_number(PAY_YEAR)=1 and PAY_YEAR is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN' as table_name,'END_YEAR' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN
 where f_is_number(END_YEAR)=1 and END_YEAR is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN_PAYEE' as table_name,'LIST_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN_PAYEE
 where f_is_number(LIST_ID)=1 and LIST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN_PAYEE' as table_name,'LIST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_PLAN_PAYEE
 where LIST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN_PAYEE' as table_name,'LIST_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_PAY_PLAN_PAYEE
 where (select count(*) from DM_PAY_PLAN_PAYEE  b where DM_PAY_PLAN_PAYEE.LIST_ID=b.LIST_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN_PAYEE' as table_name,'PLAN_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN_PAYEE
 where f_is_number(PLAN_ID)=1 and PLAN_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN_PAYEE' as table_name,'PLAN_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_PLAN_PAYEE
 where PLAN_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN_PAYEE' as table_name,'PAY_MODE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN_PAYEE
 where f_is_number(PAY_MODE)=1 and PAY_MODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN_PAYEE' as table_name,'PAY_MODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_PLAN_PAYEE
 where PAY_MODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN_PAYEE' as table_name,'PAYEE_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN_PAYEE
 where f_is_number(PAYEE_ID)=1 and PAYEE_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN_PAYEE' as table_name,'PAYEE_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_PLAN_PAYEE
 where PAYEE_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN_PAYEE' as table_name,'PAYEE_RATE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN_PAYEE
 where f_is_number(PAYEE_RATE)=1 and PAYEE_RATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN_PAYEE' as table_name,'PAYEE_RATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PAY_PLAN_PAYEE
 where PAYEE_RATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN_PAYEE' as table_name,'PAYEE_ADDRESS_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN_PAYEE
 where f_is_number(PAYEE_ADDRESS_ID)=1 and PAYEE_ADDRESS_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_PolAccount_V0.4.xlsx' as module_name,'DM_PAY_PLAN_PAYEE' as table_name,'PAYEE_ACCOUNT_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PAY_PLAN_PAYEE
 where f_is_number(PAYEE_ACCOUNT_ID)=1 and PAYEE_ACCOUNT_ID is not null;

 commit;