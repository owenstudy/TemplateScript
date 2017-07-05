drop table DM_RI_PRODUCT_RISK;
create table DM_RI_PRODUCT_RISK(
LIST_ID                        varchar2(300)  primary key,
ITEM_ID                        varchar2(300) ,
RISK_TYPE                      varchar2(300) ,
SAR                            varchar2(300) ,
RISAR                          varchar2(300) ,
RTSAR                          varchar2(300) ,
REINS_TYPE                     varchar2(300) 
);
drop table DM_RI_FAC_REQUEST;
create table DM_RI_FAC_REQUEST(
REQUEST_ID                     varchar2(300)  primary key,
CED_ITEM_ID                    varchar2(300) ,
REQUEST_DATE                   varchar2(300) ,
REQUEST_MEMO                   varchar2(300) ,
RATE_CODE                      varchar2(300) ,
CED_PERCENTAGE                 varchar2(300) ,
POLICY_ID                      varchar2(300) ,
CEDING_AMOUNT                  varchar2(300) ,
RI_CEDING_TYPE                 varchar2(300) 
);
drop table DM_RI_CONTRACT_REINSURER;
create table DM_RI_CONTRACT_REINSURER(
CONTRACT_ID                    varchar2(300)  primary key,
REINSURER_CODE                 varchar2(300)  primary key,
SHARE_RATE                     varchar2(300) 
);
drop table DM_RI_CONTRACT;
create table DM_RI_CONTRACT(
CONTRACT_ID                    varchar2(300)  primary key,
CED_TO_DATE                    varchar2(300) ,
CONTRACT_STATUS                varchar2(300) ,
POLICY_ID                      varchar2(300) ,
ITEM_ID                        varchar2(300) ,
RISK_LIST_ID                   varchar2(300) ,
TREATY_CODE                    varchar2(300) ,
Ceding_RATE                    varchar2(300) ,
EXCHANGE_RATE                  varchar2(300) ,
SAR                            varchar2(300) ,
RISAR                          varchar2(300) ,
RTSAR                          varchar2(300) 
);
drop table DM_RI_FAC_ARRANGEMENT;
create table DM_RI_FAC_ARRANGEMENT(
REQUEST_ID                     varchar2(300) ,
REINSURER_CODE                 varchar2(300) ,
SHARE_PERCENTAGE               varchar2(300) 
);
