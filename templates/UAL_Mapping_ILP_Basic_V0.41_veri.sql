insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST' as table_name,'LIST_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST
 where length(LIST_ID)>20 and LIST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST' as table_name,'LIST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST
 where LIST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST' as table_name,'LIST_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST
 where (select count(*) from DM_CONTRACT_INVEST  b where DM_CONTRACT_INVEST.LIST_ID=b.LIST_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST' as table_name,'ACCOUNT_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST
 where length(ACCOUNT_CODE)>20 and ACCOUNT_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST' as table_name,'ACCOUNT_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST
 where ACCOUNT_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST' as table_name,'ACCUM_UNITS' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST
 where f_is_number(ACCUM_UNITS)=1 and ACCUM_UNITS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST' as table_name,'ACCUM_UNITS' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST
 where ACCUM_UNITS is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_FUND_PRICE' as table_name,'PRICE_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_PRICE
 where f_is_number(PRICE_ID)=1 and PRICE_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_FUND_PRICE' as table_name,'PRICE_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_PRICE
 where PRICE_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_FUND_PRICE' as table_name,'PRICE_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_FUND_PRICE
 where (select count(*) from DM_FUND_PRICE  b where DM_FUND_PRICE.PRICE_ID=b.PRICE_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_FUND_PRICE' as table_name,'FUND_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_FUND_PRICE
 where length(FUND_CODE)>20 and FUND_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_FUND_PRICE' as table_name,'FUND_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_PRICE
 where FUND_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_FUND_PRICE' as table_name,'PRICING_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_PRICE
 where f_is_date(PRICING_DATE)=1 and PRICING_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_FUND_PRICE' as table_name,'PRICING_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_PRICE
 where PRICING_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_FUND_PRICE' as table_name,'MONEY_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_PRICE
 where f_is_number(MONEY_ID)=1 and MONEY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_FUND_PRICE' as table_name,'BID_PRICE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_PRICE
 where f_is_number(BID_PRICE)=1 and BID_PRICE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_FUND_PRICE' as table_name,'BID_PRICE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_PRICE
 where BID_PRICE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_FUND_PRICE' as table_name,'OFF_PRICE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_FUND_PRICE
 where f_is_number(OFF_PRICE)=1 and OFF_PRICE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_FUND_PRICE' as table_name,'OFF_PRICE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_FUND_PRICE
 where OFF_PRICE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'STREAM_INVEST_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where length(STREAM_INVEST_ID)>20 and STREAM_INVEST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'STREAM_INVEST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where STREAM_INVEST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'STREAM_INVEST_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where (select count(*) from DM_CONTRACT_INVEST_STREAM  b where DM_CONTRACT_INVEST_STREAM.STREAM_INVEST_ID=b.STREAM_INVEST_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'INVEST_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where length(INVEST_ID)>20 and INVEST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'INVEST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where INVEST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'PREM_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where length(PREM_TYPE)>1 and PREM_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'PREM_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where PREM_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'ACCOUNT_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where length(ACCOUNT_CODE)>20 and ACCOUNT_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'ACCOUNT_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where ACCOUNT_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'ACCUM_UNITS' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where f_is_number(ACCUM_UNITS)=1 and ACCUM_UNITS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_STREAM' as table_name,'ACCUM_UNITS' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_STREAM
 where ACCUM_UNITS is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_RATE' as table_name,'LIST_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_RATE
 where length(LIST_ID)>20 and LIST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_RATE' as table_name,'LIST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_RATE
 where LIST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_RATE' as table_name,'LIST_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_RATE
 where (select count(*) from DM_CONTRACT_INVEST_RATE  b where DM_CONTRACT_INVEST_RATE.LIST_ID=b.LIST_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_RATE' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_RATE
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_RATE' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_RATE
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_RATE' as table_name,'ACCOUNT_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_RATE
 where length(ACCOUNT_CODE)>20 and ACCOUNT_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_RATE' as table_name,'ACCOUNT_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_RATE
 where ACCOUNT_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_RATE' as table_name,'ASSIGN_RATE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_RATE
 where f_is_number(ASSIGN_RATE)=1 and ASSIGN_RATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_RATE' as table_name,'ASSIGN_RATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_RATE
 where ASSIGN_RATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_RATE' as table_name,'PREM_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_RATE
 where length(PREM_TYPE)>1 and PREM_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_RATE' as table_name,'PREM_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_RATE
 where PREM_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_RATE' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_RATE
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_CONTRACT_INVEST_RATE' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_INVEST_RATE
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'ADD_PREM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where length(ADD_PREM_ID)>20 and ADD_PREM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'ADD_PREM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where ADD_PREM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'ADD_PREM_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where (select count(*) from DM_ADD_INVEST  b where DM_ADD_INVEST.ADD_PREM_ID=b.ADD_PREM_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'ADD_PREM_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where length(ADD_PREM_TYPE)>1 and ADD_PREM_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'ADD_PREM_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where ADD_PREM_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'ADD_PREM' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where f_is_number(ADD_PREM)=1 and ADD_PREM is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'ADD_PREM' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where ADD_PREM is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'PAIDUP_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where f_is_date(PAIDUP_DATE)=1 and PAIDUP_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'PAY_TO_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where f_is_date(PAY_TO_DATE)=1 and PAY_TO_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'ADD_PREM_AN' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where f_is_number(ADD_PREM_AN)=1 and ADD_PREM_AN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_ADD_INVEST' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_ADD_INVEST
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_POLICY_FUND_CHARGE' as table_name,'LIST_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_FUND_CHARGE
 where f_is_number(LIST_ID)=1 and LIST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_POLICY_FUND_CHARGE' as table_name,'LIST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_FUND_CHARGE
 where LIST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_POLICY_FUND_CHARGE' as table_name,'LIST_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_POLICY_FUND_CHARGE
 where (select count(*) from DM_POLICY_FUND_CHARGE  b where DM_POLICY_FUND_CHARGE.LIST_ID=b.LIST_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_POLICY_FUND_CHARGE' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_POLICY_FUND_CHARGE
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_POLICY_FUND_CHARGE' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_FUND_CHARGE
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_POLICY_FUND_CHARGE' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_POLICY_FUND_CHARGE
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_POLICY_FUND_CHARGE' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_FUND_CHARGE
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_POLICY_FUND_CHARGE' as table_name,'CHARGE_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_POLICY_FUND_CHARGE
 where length(CHARGE_CODE)>2 and CHARGE_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_POLICY_FUND_CHARGE' as table_name,'CHARGE_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_FUND_CHARGE
 where CHARGE_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_POLICY_FUND_CHARGE' as table_name,'CHARGE_DUE_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_FUND_CHARGE
 where f_is_date(CHARGE_DUE_DATE)=1 and CHARGE_DUE_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_ILP_Basic_V0.41.xlsx' as module_name,'DM_POLICY_FUND_CHARGE' as table_name,'CHARGE_DUE_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_FUND_CHARGE
 where CHARGE_DUE_DATE is  null;

 commit;