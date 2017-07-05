insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'LIST_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where f_is_number(LIST_ID)=1 and LIST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'LIST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where LIST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'LIST_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where (select count(*) from DM_EXTRA_PREM  b where DM_EXTRA_PREM.LIST_ID=b.LIST_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'EXTRA_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where length(EXTRA_TYPE)>1 and EXTRA_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'EXTRA_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where EXTRA_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'START_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where f_is_date(START_DATE)=1 and START_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'START_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where START_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'END_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where f_is_date(END_DATE)=1 and END_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'END_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where END_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'EXTRA_ARITH' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where EXTRA_ARITH is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'EXTRA_PREM' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where f_is_number(EXTRA_PREM)=1 and EXTRA_PREM is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'EXTRA_PARA' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where f_is_number(EXTRA_PARA)=1 and EXTRA_PARA is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'NEXT_EXTRA_PREM' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where f_is_number(NEXT_EXTRA_PREM)=1 and NEXT_EXTRA_PREM is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'EM_VALUE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where f_is_number(EM_VALUE)=1 and EM_VALUE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'REASON' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where length(REASON)>4000 and REASON is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'INSURED_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where f_is_number(INSURED_ID)=1 and INSURED_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'INSURED_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where INSURED_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'EXTRA_STATUS' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where length(EXTRA_STATUS)>1 and EXTRA_STATUS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'EXTRA_STATUS' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where EXTRA_STATUS is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'RE_CALC_INDI' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where RE_CALC_INDI is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'EXTRA_PREM_AN' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where f_is_number(EXTRA_PREM_AN)=1 and EXTRA_PREM_AN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_EXTRA_PREM' as table_name,'NEXT_EXTRA_PREM_AN' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_EXTRA_PREM
 where f_is_number(NEXT_EXTRA_PREM_AN)=1 and NEXT_EXTRA_PREM_AN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'LIST_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where f_is_number(LIST_ID)=1 and LIST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'LIST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where LIST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'LIST_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where (select count(*) from DM_CONTRACT_BENE  b where DM_CONTRACT_BENE.LIST_ID=b.LIST_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'PARTY_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where f_is_number(PARTY_ID)=1 and PARTY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'PARTY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where PARTY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'INSURANT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where f_is_number(INSURANT)=1 and INSURANT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'BENE_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where BENE_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'SHARE_ORDER' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where f_is_number(SHARE_ORDER)=1 and SHARE_ORDER is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'SHARE_ORDER' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where SHARE_ORDER is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'SHARE_RATE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where f_is_number(SHARE_RATE)=1 and SHARE_RATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'DESIGNATION' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where f_is_number(DESIGNATION)=1 and DESIGNATION is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'DESIGNATION' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where DESIGNATION is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'LEGAL_BENE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where LEGAL_BENE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'ADDRESS_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where f_is_number(ADDRESS_ID)=1 and ADDRESS_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_BENE' as table_name,'IRREVOCABLE_INDI' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_BENE
 where IRREVOCABLE_INDI is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'POLICY_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where (select count(*) from DM_CONTRACT_MASTER  b where DM_CONTRACT_MASTER.POLICY_ID=b.POLICY_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'POLICY_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where length(POLICY_CODE)>20 and POLICY_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'APPLY_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where length(APPLY_CODE)>20 and APPLY_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'ORGAN_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(ORGAN_ID)=1 and ORGAN_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'ORGAN_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where ORGAN_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'MONEY_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(MONEY_ID)=1 and MONEY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'MONEY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where MONEY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'SUBMIT_CHANNEL' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where length(SUBMIT_CHANNEL)>2 and SUBMIT_CHANNEL is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'SUBMIT_CHANNEL' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where SUBMIT_CHANNEL is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'ASSIGNMENT_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where length(ASSIGNMENT_TYPE)>2 and ASSIGNMENT_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'ASSIGNMENT_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where ASSIGNMENT_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'ASSIGNMENT_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where length(ASSIGNMENT_ID)>2 and ASSIGNMENT_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'PROPOSAL_STATUS' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(PROPOSAL_STATUS)=1 and PROPOSAL_STATUS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'PROPOSAL_STATUS' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where PROPOSAL_STATUS is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'COMMENTS' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where length(COMMENTS)>1000 and COMMENTS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'APPLICANT_AGE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(APPLICANT_AGE)=1 and APPLICANT_AGE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'PARTY_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(PARTY_ID)=1 and PARTY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'PARTY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where PARTY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'BIRTH_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_date(BIRTH_DATE)=1 and BIRTH_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'JOB_CLASS' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(JOB_CLASS)=1 and JOB_CLASS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'ADDRESS_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(ADDRESS_ID)=1 and ADDRESS_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'JOB_CATE_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(JOB_CATE_ID)=1 and JOB_CATE_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'PARTY_ID_PAYER' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(PARTY_ID_PAYER)=1 and PARTY_ID_PAYER is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'PARTY_ID_PAYER' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where PARTY_ID_PAYER is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'PAY_MODE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(PAY_MODE)=1 and PAY_MODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'PAY_MODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where PAY_MODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'ACCOUNT_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(ACCOUNT_ID)=1 and ACCOUNT_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'PAY_MONEY_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(PAY_MONEY_ID)=1 and PAY_MONEY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'PAY_MONEY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where PAY_MONEY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'PRECONT_TIME' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_date(PRECONT_TIME)=1 and PRECONT_TIME is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'CONVERSION_AGE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(CONVERSION_AGE)=1 and CONVERSION_AGE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'CHANNEL_TYPE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(CHANNEL_TYPE)=1 and CHANNEL_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'TOTAL_PAID_PREM' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(TOTAL_PAID_PREM)=1 and TOTAL_PAID_PREM is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'REMARK' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where length(REMARK)>255 and REMARK is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'ADDRESS_ID_PAYER' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where f_is_number(ADDRESS_ID_PAYER)=1 and ADDRESS_ID_PAYER is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_MASTER' as table_name,'LANG_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_MASTER
 where length(LANG_ID)>3 and LANG_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'DISCNT_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where f_is_number(DISCNT_ID)=1 and DISCNT_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'DISCNT_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where DISCNT_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'DISCNT_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where (select count(*) from DM_PREM_DISCNT  b where DM_PREM_DISCNT.DISCNT_ID=b.DISCNT_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'DISCNT_SOURCE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where length(DISCNT_SOURCE)>1 and DISCNT_SOURCE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'DISCNT_SOURCE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where DISCNT_SOURCE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'DISCOUNT_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where length(DISCOUNT_TYPE)>2 and DISCOUNT_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'DISCOUNT_TYPE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where DISCOUNT_TYPE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'DISCNT_RATE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where f_is_number(DISCNT_RATE)=1 and DISCNT_RATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'DISCNT_RATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where DISCNT_RATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'DISCNT_PREM_AF' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where f_is_number(DISCNT_PREM_AF)=1 and DISCNT_PREM_AF is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'DISCNT_PREM_AF' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where DISCNT_PREM_AF is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'DISCNT_PREM_AN' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where f_is_number(DISCNT_PREM_AN)=1 and DISCNT_PREM_AN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'DISCNT_PREM_AN' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where DISCNT_PREM_AN is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'NEXT_DISCNT_RATE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where f_is_number(NEXT_DISCNT_RATE)=1 and NEXT_DISCNT_RATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'NEXT_DISCNT_RATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where NEXT_DISCNT_RATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'NEXT_DISCNT_PREM_AF' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where f_is_number(NEXT_DISCNT_PREM_AF)=1 and NEXT_DISCNT_PREM_AF is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'NEXT_DISCNT_PREM_AF' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where NEXT_DISCNT_PREM_AF is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'NEXT_DISCNT_PREM_AN' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where f_is_number(NEXT_DISCNT_PREM_AN)=1 and NEXT_DISCNT_PREM_AN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'NEXT_DISCNT_PREM_AN' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where NEXT_DISCNT_PREM_AN is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_PREM_DISCNT' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_PREM_DISCNT
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_SUSPENSE' as table_name,'POLICY_CODE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_SUSPENSE
 where f_is_number(POLICY_CODE)=1 and POLICY_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_SUSPENSE' as table_name,'APPLY_CODE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_SUSPENSE
 where f_is_number(APPLY_CODE)=1 and APPLY_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_SUSPENSE' as table_name,'CERTI_TYPE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_SUSPENSE
 where f_is_number(CERTI_TYPE)=1 and CERTI_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_SUSPENSE' as table_name,'CERTI_CODE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_SUSPENSE
 where f_is_number(CERTI_CODE)=1 and CERTI_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_SUSPENSE' as table_name,'SUSPENSE_TYPE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_SUSPENSE
 where length(SUSPENSE_TYPE)>1 and SUSPENSE_TYPE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_SUSPENSE' as table_name,'SUSP_AMT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_SUSPENSE
 where f_is_number(SUSP_AMT)=1 and SUSP_AMT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_SUSPENSE' as table_name,'SUSP_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_SUSPENSE
 where f_is_date(SUSP_DATE)=1 and SUSP_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'ITEM_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where (select count(*) from DM_CONTRACT_PRODUCT  b where DM_CONTRACT_PRODUCT.ITEM_ID=b.ITEM_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'MASTER_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where length(MASTER_ID)>20 and MASTER_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'PRODUCT_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where length(PRODUCT_ID)>20 and PRODUCT_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'PRODUCT_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where PRODUCT_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'AMOUNT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(AMOUNT)=1 and AMOUNT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'UNIT' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(UNIT)=1 and UNIT is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'APPLY_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(APPLY_DATE)=1 and APPLY_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'APPLY_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where APPLY_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'EXPIRY_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(EXPIRY_DATE)=1 and EXPIRY_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'VALIDATE_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(VALIDATE_DATE)=1 and VALIDATE_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'PAIDUP_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(PAIDUP_DATE)=1 and PAIDUP_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'LIABILITY_STATE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(LIABILITY_STATE)=1 and LIABILITY_STATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'LIABILITY_STATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where LIABILITY_STATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'END_CAUSE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(END_CAUSE)=1 and END_CAUSE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'CHARGE_YEAR' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(CHARGE_YEAR)=1 and CHARGE_YEAR is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'COVERAGE_YEAR' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(COVERAGE_YEAR)=1 and COVERAGE_YEAR is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'BENEFIT_LEVEL' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where length(BENEFIT_LEVEL)>20 and BENEFIT_LEVEL is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'DECISION_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(DECISION_ID)=1 and DECISION_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'RENEW_DECISION' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where length(RENEW_DECISION)>1 and RENEW_DECISION is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'RENEW_DECISION' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where RENEW_DECISION is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'BONUS_SA' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(BONUS_SA)=1 and BONUS_SA is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'BONUS_SA' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where BONUS_SA is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'ORIGIN_SA' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(ORIGIN_SA)=1 and ORIGIN_SA is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'ORIGIN_SA' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where ORIGIN_SA is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'ORIGIN_BONUS_SA' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(ORIGIN_BONUS_SA)=1 and ORIGIN_BONUS_SA is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'ORIGIN_BONUS_SA' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where ORIGIN_BONUS_SA is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'WAIVER_START' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(WAIVER_START)=1 and WAIVER_START is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'WAIVER_END' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(WAIVER_END)=1 and WAIVER_END is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'STD_PREM_AF' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(STD_PREM_AF)=1 and STD_PREM_AF is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'STD_PREM_AF' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where STD_PREM_AF is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'DISCNT_PREM_AF' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(DISCNT_PREM_AF)=1 and DISCNT_PREM_AF is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'DISCNT_PREM_AF' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where DISCNT_PREM_AF is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'POLICY_FEE_AF' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(POLICY_FEE_AF)=1 and POLICY_FEE_AF is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'POLICY_FEE_AF' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where POLICY_FEE_AF is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'EXTRA_PREM_AF' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(EXTRA_PREM_AF)=1 and EXTRA_PREM_AF is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'EXTRA_PREM_AF' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where EXTRA_PREM_AF is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'TOTAL_PREM_AF' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(TOTAL_PREM_AF)=1 and TOTAL_PREM_AF is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'TOTAL_PREM_AF' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where TOTAL_PREM_AF is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'STD_PREM_AN' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(STD_PREM_AN)=1 and STD_PREM_AN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'STD_PREM_AN' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where STD_PREM_AN is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'DISCNT_PREM_AN' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(DISCNT_PREM_AN)=1 and DISCNT_PREM_AN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'DISCNT_PREM_AN' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where DISCNT_PREM_AN is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'POLICY_FEE_AN' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(POLICY_FEE_AN)=1 and POLICY_FEE_AN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'POLICY_FEE_AN' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where POLICY_FEE_AN is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'EXTRA_PREM_AN' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(EXTRA_PREM_AN)=1 and EXTRA_PREM_AN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'EXTRA_PREM_AN' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where EXTRA_PREM_AN is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_STD_PREM_AF' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(NEXT_STD_PREM_AF)=1 and NEXT_STD_PREM_AF is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_STD_PREM_AF' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where NEXT_STD_PREM_AF is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_DISCNT_PREM_AF' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(NEXT_DISCNT_PREM_AF)=1 and NEXT_DISCNT_PREM_AF is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_DISCNT_PREM_AF' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where NEXT_DISCNT_PREM_AF is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_POLICY_FEE_AF' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(NEXT_POLICY_FEE_AF)=1 and NEXT_POLICY_FEE_AF is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_POLICY_FEE_AF' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where NEXT_POLICY_FEE_AF is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_EXTRA_PREM_AF' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(NEXT_EXTRA_PREM_AF)=1 and NEXT_EXTRA_PREM_AF is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_EXTRA_PREM_AF' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where NEXT_EXTRA_PREM_AF is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_TOTAL_PREM_AF' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(NEXT_TOTAL_PREM_AF)=1 and NEXT_TOTAL_PREM_AF is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_TOTAL_PREM_AF' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where NEXT_TOTAL_PREM_AF is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_STD_PREM_AN' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(NEXT_STD_PREM_AN)=1 and NEXT_STD_PREM_AN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_STD_PREM_AN' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where NEXT_STD_PREM_AN is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_DISCNT_PREM_AN' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(NEXT_DISCNT_PREM_AN)=1 and NEXT_DISCNT_PREM_AN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_DISCNT_PREM_AN' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where NEXT_DISCNT_PREM_AN is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_POLICY_FEE_AN' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(NEXT_POLICY_FEE_AN)=1 and NEXT_POLICY_FEE_AN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_POLICY_FEE_AN' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where NEXT_POLICY_FEE_AN is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_EXTRA_PREM_AN' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(NEXT_EXTRA_PREM_AN)=1 and NEXT_EXTRA_PREM_AN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'NEXT_EXTRA_PREM_AN' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where NEXT_EXTRA_PREM_AN is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'LAPSE_CAUSE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(LAPSE_CAUSE)=1 and LAPSE_CAUSE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'SUBMISSION_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(SUBMISSION_DATE)=1 and SUBMISSION_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'SUBMISSION_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where SUBMISSION_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'ACTUAL_VALIDATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(ACTUAL_VALIDATE)=1 and ACTUAL_VALIDATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'INITIAL_VALI_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(INITIAL_VALI_DATE)=1 and INITIAL_VALI_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'ISSUE_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(ISSUE_DATE)=1 and ISSUE_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'RISK_COMMENCE_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(RISK_COMMENCE_DATE)=1 and RISK_COMMENCE_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'DUE_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(DUE_DATE)=1 and DUE_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'DUE_DATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where DUE_DATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'PREM_STATUS' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(PREM_STATUS)=1 and PREM_STATUS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'PREM_STATUS' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where PREM_STATUS is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'BILLING_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(BILLING_DATE)=1 and BILLING_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'LAPSE_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(LAPSE_DATE)=1 and LAPSE_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'END_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_date(END_DATE)=1 and END_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'WAIVER_SA' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where f_is_number(WAIVER_SA)=1 and WAIVER_SA is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_CONTRACT_PRODUCT' as table_name,'FLOATER_PLAN' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_CONTRACT_PRODUCT
 where length(FLOATER_PLAN)>1 and FLOATER_PLAN is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'ROLE_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where f_is_number(ROLE_ID)=1 and ROLE_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'ROLE_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where ROLE_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'ROLE_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where (select count(*) from DM_POLICY_PRODUCER_ROLE  b where DM_POLICY_PRODUCER_ROLE.ROLE_ID=b.ROLE_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'PRODUCER_ROLE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where length(PRODUCER_ROLE)>2 and PRODUCER_ROLE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'PRODUCER_ROLE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where PRODUCER_ROLE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'PRODUCER_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where length(PRODUCER_ID)>20 and PRODUCER_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'PRODUCER_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where PRODUCER_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'PRODUCER_POSITION' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where length(PRODUCER_POSITION)>2 and PRODUCER_POSITION is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'ASSIGN_RATE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where f_is_number(ASSIGN_RATE)=1 and ASSIGN_RATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'ASSIGN_RATE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where ASSIGN_RATE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'START_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where f_is_date(START_DATE)=1 and START_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'END_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where f_is_date(END_DATE)=1 and END_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_PRODUCER_ROLE' as table_name,'HIERARCHY_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_PRODUCER_ROLE
 where f_is_date(HIERARCHY_DATE)=1 and HIERARCHY_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_EXCLUSION' as table_name,'EXCLUSION_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_EXCLUSION
 where f_is_number(EXCLUSION_ID)=1 and EXCLUSION_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_EXCLUSION' as table_name,'EXCLUSION_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_EXCLUSION
 where EXCLUSION_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_EXCLUSION' as table_name,'EXCLUSION_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_POLICY_EXCLUSION
 where (select count(*) from DM_POLICY_EXCLUSION  b where DM_POLICY_EXCLUSION.EXCLUSION_ID=b.EXCLUSION_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_EXCLUSION' as table_name,'EXCLUSION_CODE' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_POLICY_EXCLUSION
 where length(EXCLUSION_CODE)>50 and EXCLUSION_CODE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_EXCLUSION' as table_name,'EXCLUSION_CODE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_EXCLUSION
 where EXCLUSION_CODE is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_EXCLUSION' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_POLICY_EXCLUSION
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_EXCLUSION' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_POLICY_EXCLUSION
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_EXCLUSION' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_POLICY_EXCLUSION
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_EXCLUSION' as table_name,'DESC_LANG1' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_POLICY_EXCLUSION
 where length(DESC_LANG1)>4000 and DESC_LANG1 is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_EXCLUSION' as table_name,'EFFECT_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_EXCLUSION
 where f_is_date(EFFECT_DATE)=1 and EFFECT_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_POLICY_EXCLUSION' as table_name,'EXPIRY_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_POLICY_EXCLUSION
 where f_is_date(EXPIRY_DATE)=1 and EXPIRY_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'LIST_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where f_is_number(LIST_ID)=1 and LIST_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'LIST_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where LIST_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'LIST_ID' as column_name,'VERI_UNIQUE' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where (select count(*) from DM_BENEFIT_INSURED  b where DM_BENEFIT_INSURED.LIST_ID=b.LIST_ID)>1;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'ITEM_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where length(ITEM_ID)>20 and ITEM_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'ITEM_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where ITEM_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'PARTY_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where f_is_number(PARTY_ID)=1 and PARTY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'PARTY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where PARTY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'ENTRY_AGE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where f_is_number(ENTRY_AGE)=1 and ENTRY_AGE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'POLICY_ID' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where length(POLICY_ID)>20 and POLICY_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'POLICY_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where POLICY_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'ORDER_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where f_is_number(ORDER_ID)=1 and ORDER_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'ORDER_ID' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where ORDER_ID is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'JOB_CLASS' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where f_is_number(JOB_CLASS)=1 and JOB_CLASS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'ADDRESS_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where f_is_number(ADDRESS_ID)=1 and ADDRESS_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'RELATION_TO_PH' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where f_is_number(RELATION_TO_PH)=1 and RELATION_TO_PH is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'INSURED_STATUS' as column_name,'VERI_STRING_LENGTH_OVER_DEF' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where length(INSURED_STATUS)>2 and INSURED_STATUS is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'INSURED_STATUS' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where INSURED_STATUS is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'BIRTH_DATE' as column_name,'VERI_DATE_ILLEGAL' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where f_is_date(BIRTH_DATE)=1 and BIRTH_DATE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'EM_VALUE' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where f_is_number(EM_VALUE)=1 and EM_VALUE is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'JOB_CATE_ID' as column_name,'VERI_NUMBER_ILLEGAL' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where f_is_number(JOB_CATE_ID)=1 and JOB_CATE_ID is not null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'SMOKING' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where SMOKING is  null;
insert into dm_template_veri (module_name,table_name,column_name,veri_code,veri_result)
select './templates/UAL_Mapping_POLICY_V0.4.2.xlsx' as module_name,'DM_BENEFIT_INSURED' as table_name,'STAND_LIFE' as column_name,'VERI_NON_NULLABLE' as veri_code,count(*) as veri_result from DM_BENEFIT_INSURED
 where STAND_LIFE is  null;

 commit;