set NLS_LANG=AMERICAN_AMERICA.ZHS16GBK
--./templates/UAL_Mapping_Claim_V0.3.xlsx
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_accution.ctl BAD=./bad/dm_accution.bad LOG=./log/dm_accution.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_legacy_claim .ctl BAD=./bad/dm_legacy_claim .bad LOG=./log/dm_legacy_claim .log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_claim_instalment.ctl BAD=./bad/dm_claim_instalment.bad LOG=./log/dm_claim_instalment.log
--./templates/UAL_Mapping_ILP_Transaction_V0.4.1.xlsx
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_fund_trans.ctl BAD=./bad/dm_fund_trans.bad LOG=./log/dm_fund_trans.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_fund_cash.ctl BAD=./bad/dm_fund_cash.bad LOG=./log/dm_fund_cash.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_capital_distribute.ctl BAD=./bad/dm_capital_distribute.bad LOG=./log/dm_capital_distribute.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_fund_trans_apply.ctl BAD=./bad/dm_fund_trans_apply.bad LOG=./log/dm_fund_trans_apply.log
--./templates/UAL_Mapping_ILP_Basic_V0.41.xlsx
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_policy_fund_charge.ctl BAD=./bad/dm_policy_fund_charge.bad LOG=./log/dm_policy_fund_charge.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_contract_invest.ctl BAD=./bad/dm_contract_invest.bad LOG=./log/dm_contract_invest.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_add_invest.ctl BAD=./bad/dm_add_invest.bad LOG=./log/dm_add_invest.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_contract_invest_stream.ctl BAD=./bad/dm_contract_invest_stream.bad LOG=./log/dm_contract_invest_stream.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_fund_price.ctl BAD=./bad/dm_fund_price.bad LOG=./log/dm_fund_price.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_contract_invest_rate.ctl BAD=./bad/dm_contract_invest_rate.bad LOG=./log/dm_contract_invest_rate.log
--./templates/UAL_Mapping_CS_V0.2.1.xlsx
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_sa_change.ctl BAD=./bad/dm_sa_change.bad LOG=./log/dm_sa_change.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_product_liability_change.ctl BAD=./bad/dm_product_liability_change.bad LOG=./log/dm_product_liability_change.log
--./templates/UAL_Mapping_Party_V0.2.5.xlsx
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_customer.ctl BAD=./bad/dm_customer.bad LOG=./log/dm_customer.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_producer_hierarchy.ctl BAD=./bad/dm_producer_hierarchy.bad LOG=./log/dm_producer_hierarchy.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_bank_account.ctl BAD=./bad/dm_bank_account.bad LOG=./log/dm_bank_account.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_agent.ctl BAD=./bad/dm_agent.bad LOG=./log/dm_agent.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_company_customer.ctl BAD=./bad/dm_company_customer.bad LOG=./log/dm_company_customer.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_party.ctl BAD=./bad/dm_party.bad LOG=./log/dm_party.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_address.ctl BAD=./bad/dm_address.bad LOG=./log/dm_address.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_party_addr.ctl BAD=./bad/dm_party_addr.bad LOG=./log/dm_party_addr.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_party_comment.ctl BAD=./bad/dm_party_comment.bad LOG=./log/dm_party_comment.log
sqlldr $USERNAME/$PWD DIRECT=Y ROWS=50000 COLUMNARRAYROWS=50000 CONTROL=dm_channel_org.ctl BAD=./bad/dm_channel_org.bad LOG=./log/dm_channel_org.log
