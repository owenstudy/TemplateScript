insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'CAPITAL_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where f_is_number(CAPITAL_ID)=1 and CAPITAL_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'CAPITAL_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where CAPITAL_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'CAPITAL_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where (select count(*) from DM_CAPITAL_DISTRIBUTE  b where DM_CAPITAL_DISTRIBUTE.CAPITAL_ID=b.CAPITAL_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'DISTRI_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where f_is_date(DISTRI_DATE)=1 and DISTRI_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'DISTRI_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where DISTRI_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'DISTRI_AMOUNT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where f_is_number(DISTRI_AMOUNT)=1 and DISTRI_AMOUNT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'DISTRI_AMOUNT' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where DISTRI_AMOUNT is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'DISTRI_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where length(DISTRI_TYPE)>3 and DISTRI_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'DISTRI_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where DISTRI_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'CAPITAL_SOURCE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where length(CAPITAL_SOURCE)>1 and CAPITAL_SOURCE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'CAPITAL_SOURCE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where CAPITAL_SOURCE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'ACCOUNTING_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where f_is_date(ACCOUNTING_DATE)=1 and ACCOUNTING_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'INSERT_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where f_is_date(INSERT_DATE)=1 and INSERT_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'INSERT_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where INSERT_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'UPDATE_TIME' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where f_is_date(UPDATE_TIME)=1 and UPDATE_TIME is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'INSERTED_BY' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where f_is_number(INSERTED_BY)=1 and INSERTED_BY is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'INSERTED_BY' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where INSERTED_BY is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'UPDATED_BY' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where f_is_number(UPDATED_BY)=1 and UPDATED_BY is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'UPDATED_BY' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where UPDATED_BY is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'CHANGE_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where length(CHANGE_ID)>100 and CHANGE_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_CAPITAL_DISTRIBUTE' as table_name,'CHANGE_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CAPITAL_DISTRIBUTE
 where CHANGE_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'TRANS_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where f_is_number(TRANS_ID)=1 and TRANS_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'TRANS_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where TRANS_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'TRANS_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where (select count(*) from DM_FUND_TRANS  b where DM_FUND_TRANS.TRANS_ID=b.TRANS_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'FUND_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where length(FUND_CODE)>20 and FUND_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'FUND_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where FUND_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'TRANS_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where length(TRANS_CODE)>2 and TRANS_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'TRANS_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where TRANS_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'TRANS_AMOUNT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where f_is_number(TRANS_AMOUNT)=1 and TRANS_AMOUNT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'TRANS_AMOUNT' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where TRANS_AMOUNT is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'TRANS_UNITS' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where f_is_number(TRANS_UNITS)=1 and TRANS_UNITS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'TRANS_UNITS' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where TRANS_UNITS is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'TRANS_PRICE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where f_is_number(TRANS_PRICE)=1 and TRANS_PRICE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'TRANS_PRICE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where TRANS_PRICE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'DEAL_TIME' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where f_is_date(DEAL_TIME)=1 and DEAL_TIME is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'DEAL_TIME' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where DEAL_TIME is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'APPLY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where length(APPLY_ID)>10 and APPLY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'APPLY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where APPLY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'FUND_PURC_PRICE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where f_is_number(FUND_PURC_PRICE)=1 and FUND_PURC_PRICE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'FUND_PURC_PRICE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where FUND_PURC_PRICE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'FUND_SELL_PRICE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where f_is_number(FUND_SELL_PRICE)=1 and FUND_SELL_PRICE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'FUND_SELL_PRICE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where FUND_SELL_PRICE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'REASON' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where length(REASON)>200 and REASON is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'BALANCE_UNITS_BF' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where f_is_number(BALANCE_UNITS_BF)=1 and BALANCE_UNITS_BF is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'BALANCE_UNITS_BF' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where BALANCE_UNITS_BF is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'PRICING_EFFECTIVE_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where f_is_date(PRICING_EFFECTIVE_DATE)=1 and PRICING_EFFECTIVE_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'PRICING_EFFECTIVE_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where PRICING_EFFECTIVE_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'INSERT_TIME' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where f_is_date(INSERT_TIME)=1 and INSERT_TIME is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'INSERT_TIME' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where INSERT_TIME is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'UPDATE_TIME' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where f_is_date(UPDATE_TIME)=1 and UPDATE_TIME is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'UPDATE_TIME' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where UPDATE_TIME is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'INSERTED_BY' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where length(INSERTED_BY)>10 and INSERTED_BY is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'UPDATED_BY' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where length(UPDATED_BY)>10 and UPDATED_BY is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'CHANGE_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where length(CHANGE_ID)>100 and CHANGE_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS' as table_name,'CHANGE_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS
 where CHANGE_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'CASH_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where f_is_number(CASH_ID)=1 and CASH_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'CASH_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where CASH_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'CASH_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where (select count(*) from DM_FUND_CASH  b where DM_FUND_CASH.CASH_ID=b.CASH_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'ACCOUNT_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where length(ACCOUNT_CODE)>20 and ACCOUNT_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'ACCOUNT_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where ACCOUNT_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'FEE_AMOUNT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where f_is_number(FEE_AMOUNT)=1 and FEE_AMOUNT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'FEE_AMOUNT' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where FEE_AMOUNT is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'ADD_REDUCE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where ADD_REDUCE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'DISTRI_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where length(DISTRI_TYPE)>3 and DISTRI_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'DISTRI_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where DISTRI_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'DISTRI_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where f_is_date(DISTRI_DATE)=1 and DISTRI_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'DISTRI_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where DISTRI_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'CAPITAL_SOURCE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where length(CAPITAL_SOURCE)>1 and CAPITAL_SOURCE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'CAPITAL_SOURCE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where CAPITAL_SOURCE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'CAPITAL_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where f_is_number(CAPITAL_ID)=1 and CAPITAL_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'CAPITAL_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where CAPITAL_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'ACCOUNTING_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where f_is_date(ACCOUNTING_DATE)=1 and ACCOUNTING_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'APPLY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where length(APPLY_ID)>10 and APPLY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'INSERT_TIME' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where f_is_date(INSERT_TIME)=1 and INSERT_TIME is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'INSERT_TIME' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where INSERT_TIME is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'UPDATE_TIME' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where f_is_date(UPDATE_TIME)=1 and UPDATE_TIME is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'UPDATE_TIME' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where UPDATE_TIME is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'INSERTED_BY' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where length(INSERTED_BY)>10 and INSERTED_BY is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'UPDATED_BY' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where length(UPDATED_BY)>10 and UPDATED_BY is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'CHANGE_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where length(CHANGE_ID)>100 and CHANGE_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_CASH' as table_name,'CHANGE_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_CASH
 where CHANGE_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'APPLY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where length(APPLY_ID)>10 and APPLY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'APPLY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where APPLY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'APPLY_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where (select count(*) from DM_FUND_TRANS_APPLY  b where DM_FUND_TRANS_APPLY.APPLY_ID=b.APPLY_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'FUND_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where length(FUND_CODE)>20 and FUND_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'FUND_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where FUND_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'TRANS_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where length(TRANS_CODE)>2 and TRANS_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'TRANS_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where TRANS_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'APPLY_AMOUNT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where f_is_number(APPLY_AMOUNT)=1 and APPLY_AMOUNT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'APPLY_UNITS' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where f_is_number(APPLY_UNITS)=1 and APPLY_UNITS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'APPLY_TIME' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where f_is_date(APPLY_TIME)=1 and APPLY_TIME is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'APPLY_TIME' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where APPLY_TIME is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'DISTRI_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where length(DISTRI_TYPE)>3 and DISTRI_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'DISTRI_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where DISTRI_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'INSERT_TIME' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where f_is_date(INSERT_TIME)=1 and INSERT_TIME is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'INSERT_TIME' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where INSERT_TIME is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'UPDATE_TIME' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where f_is_date(UPDATE_TIME)=1 and UPDATE_TIME is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'UPDATE_TIME' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where UPDATE_TIME is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'INSERTED_BY' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where length(INSERTED_BY)>10 and INSERTED_BY is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'UPDATED_BY' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where length(UPDATED_BY)>10 and UPDATED_BY is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'CHANGE_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where length(CHANGE_ID)>100 and CHANGE_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx' as module_name,'DM_FUND_TRANS_APPLY' as table_name,'CHANGE_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_TRANS_APPLY
 where CHANGE_ID is  null;

 commit;