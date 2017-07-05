insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'LIST_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where length(LIST_ID)>20 and LIST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'LIST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where LIST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'LIST_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where (select count(*) from DM_RI_PRODUCT_RISK  b where DM_RI_PRODUCT_RISK.LIST_ID=b.LIST_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'RISK_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where length(RISK_TYPE)>10 and RISK_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'RISK_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where RISK_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'SAR' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where f_is_number(SAR)=1 and SAR is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'SAR' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where SAR is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'RISAR' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where f_is_number(RISAR)=1 and RISAR is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'RISAR' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where RISAR is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'RTSAR' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where f_is_number(RTSAR)=1 and RTSAR is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'RTSAR' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where RTSAR is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'REINS_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where length(REINS_TYPE)>2 and REINS_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_PRODUCT_RISK' as table_name,'REINS_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_PRODUCT_RISK
 where REINS_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'REQUEST_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where f_is_number(REQUEST_ID)=1 and REQUEST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'REQUEST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where REQUEST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'REQUEST_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where (select count(*) from DM_RI_FAC_REQUEST  b where DM_RI_FAC_REQUEST.REQUEST_ID=b.REQUEST_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'CED_ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where length(CED_ITEM_ID)>20 and CED_ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'CED_ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where CED_ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'REQUEST_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where f_is_date(REQUEST_DATE)=1 and REQUEST_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'REQUEST_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where REQUEST_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'REQUEST_MEMO' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where length(REQUEST_MEMO)>256 and REQUEST_MEMO is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'RATE_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where length(RATE_CODE)>10 and RATE_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'CED_PERCENTAGE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where f_is_number(CED_PERCENTAGE)=1 and CED_PERCENTAGE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'CEDING_AMOUNT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where f_is_number(CEDING_AMOUNT)=1 and CEDING_AMOUNT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'CEDING_AMOUNT' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where CEDING_AMOUNT is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'RI_CEDING_TYPE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where f_is_number(RI_CEDING_TYPE)=1 and RI_CEDING_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_REQUEST' as table_name,'RI_CEDING_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_FAC_REQUEST
 where RI_CEDING_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT_REINSURER' as table_name,'CONTRACT_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_CONTRACT_REINSURER
 where f_is_number(CONTRACT_ID)=1 and CONTRACT_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT_REINSURER' as table_name,'CONTRACT_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT_REINSURER
 where CONTRACT_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT_REINSURER' as table_name,'CONTRACT_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT_REINSURER
 where (select count(*) from DM_RI_CONTRACT_REINSURER  b where DM_RI_CONTRACT_REINSURER.CONTRACT_ID=b.CONTRACT_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT_REINSURER' as table_name,'REINSURER_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_CONTRACT_REINSURER
 where length(REINSURER_CODE)>10 and REINSURER_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT_REINSURER' as table_name,'REINSURER_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT_REINSURER
 where REINSURER_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT_REINSURER' as table_name,'REINSURER_CODE' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT_REINSURER
 where (select count(*) from DM_RI_CONTRACT_REINSURER  b where DM_RI_CONTRACT_REINSURER.REINSURER_CODE=b.REINSURER_CODE)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT_REINSURER' as table_name,'SHARE_RATE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_CONTRACT_REINSURER
 where f_is_number(SHARE_RATE)=1 and SHARE_RATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT_REINSURER' as table_name,'SHARE_RATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT_REINSURER
 where SHARE_RATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'CONTRACT_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where f_is_number(CONTRACT_ID)=1 and CONTRACT_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'CONTRACT_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where CONTRACT_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'CONTRACT_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where (select count(*) from DM_RI_CONTRACT  b where DM_RI_CONTRACT.CONTRACT_ID=b.CONTRACT_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'CED_TO_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where f_is_date(CED_TO_DATE)=1 and CED_TO_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'CED_TO_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where CED_TO_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'CONTRACT_STATUS' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where length(CONTRACT_STATUS)>2 and CONTRACT_STATUS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'CONTRACT_STATUS' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where CONTRACT_STATUS is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'RISK_LIST_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where length(RISK_LIST_ID)>20 and RISK_LIST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'RISK_LIST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where RISK_LIST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'TREATY_CODE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where f_is_number(TREATY_CODE)=1 and TREATY_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'Ceding_RATE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where f_is_number(Ceding_RATE)=1 and Ceding_RATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'Ceding_RATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where Ceding_RATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'EXCHANGE_RATE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where f_is_number(EXCHANGE_RATE)=1 and EXCHANGE_RATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'EXCHANGE_RATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where EXCHANGE_RATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'SAR' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where f_is_number(SAR)=1 and SAR is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'SAR' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where SAR is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'RISAR' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where f_is_number(RISAR)=1 and RISAR is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'RISAR' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where RISAR is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'RTSAR' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where f_is_number(RTSAR)=1 and RTSAR is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_CONTRACT' as table_name,'RTSAR' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_CONTRACT
 where RTSAR is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_ARRANGEMENT' as table_name,'REQUEST_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_FAC_ARRANGEMENT
 where f_is_number(REQUEST_ID)=1 and REQUEST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_ARRANGEMENT' as table_name,'REQUEST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_FAC_ARRANGEMENT
 where REQUEST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_ARRANGEMENT' as table_name,'REINSURER_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_RI_FAC_ARRANGEMENT
 where length(REINSURER_CODE)>10 and REINSURER_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_ARRANGEMENT' as table_name,'REINSURER_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_RI_FAC_ARRANGEMENT
 where REINSURER_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_RI_V0.3.xlsx' as module_name,'DM_RI_FAC_ARRANGEMENT' as table_name,'SHARE_PERCENTAGE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_RI_FAC_ARRANGEMENT
 where f_is_number(SHARE_PERCENTAGE)=1 and SHARE_PERCENTAGE is not null;

 commit;