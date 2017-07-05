drop table DM_CONTRACT_INVEST;
create table DM_CONTRACT_INVEST(
LIST_ID                        varchar2(300)  primary key,
ITEM_ID                        varchar2(300) ,
ACCOUNT_CODE                   varchar2(300) ,
POLICY_ID                      varchar2(300) ,
ACCUM_UNITS                    varchar2(300) 
);
drop table DM_FUND_PRICE;
create table DM_FUND_PRICE(
PRICE_ID                       varchar2(300)  primary key,
FUND_CODE                      varchar2(300) ,
PRICING_DATE                   varchar2(300) ,
MONEY_ID                       varchar2(300) ,
BID_PRICE                      varchar2(300) ,
OFF_PRICE                      varchar2(300) 
);
drop table DM_CONTRACT_INVEST_STREAM;
create table DM_CONTRACT_INVEST_STREAM(
STREAM_INVEST_ID               varchar2(300)  primary key,
INVEST_ID                      varchar2(300) ,
PREM_TYPE                      varchar2(300) ,
ITEM_ID                        varchar2(300) ,
POLICY_ID                      varchar2(300) ,
ACCOUNT_CODE                   varchar2(300) ,
ACCUM_UNITS                    varchar2(300) 
);
drop table DM_CONTRACT_INVEST_RATE;
create table DM_CONTRACT_INVEST_RATE(
LIST_ID                        varchar2(300)  primary key,
ITEM_ID                        varchar2(300) ,
ACCOUNT_CODE                   varchar2(300) ,
ASSIGN_RATE                    varchar2(300) ,
PREM_TYPE                      varchar2(300) ,
POLICY_ID                      varchar2(300) 
);
drop table DM_ADD_INVEST;
create table DM_ADD_INVEST(
ADD_PREM_ID                    varchar2(300)  primary key,
ITEM_ID                        varchar2(300) ,
ADD_PREM_TYPE                  varchar2(300) ,
ADD_PREM                       varchar2(300) ,
ADD_START_DATE                 varchar2(300) ,
PAIDUP_DATE                    varchar2(300) ,
PAY_TO_DATE                    varchar2(300) ,
ADD_PREM_AN                    varchar2(300) ,
POLICY_ID                      varchar2(300) 
);
drop table DM_POLICY_FUND_CHARGE;
create table DM_POLICY_FUND_CHARGE(
LIST_ID                        varchar2(300)  primary key,
POLICY_ID                      varchar2(300) ,
ITEM_ID                        varchar2(300) ,
CHARGE_CODE                    varchar2(300) ,
CHARGE_DUE_DATE                varchar2(300) 
);
