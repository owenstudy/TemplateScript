drop table DM_POLICY_ACCOUNT_TRANS_LIST;
create table DM_POLICY_ACCOUNT_TRANS_LIST(
LIST_ID                        varchar2(300)  primary key,
ACCOUNT_ID                     varchar2(300) ,
TRANS_CODE                     varchar2(300) ,
TRANS_AMOUNT                   varchar2(300) ,
TRANS_TIME                     varchar2(300) ,
CAPITAL_ID                     varchar2(300) 
);
drop table DM_CAPITAL_DISTRIBUTE;
create table DM_CAPITAL_DISTRIBUTE(
CAPITAL_ID                     varchar2(300)  primary key,
DISTRI_DATE                    varchar2(300) ,
ITEM_ID                        varchar2(300) ,
POLICY_ID                      varchar2(300) ,
DISTRI_AMOUNT                  varchar2(300) ,
DISTRI_TYPE                    varchar2(300) ,
CAPITAL_SOURCE                 varchar2(300) ,
ACCOUNTING_DATE                varchar2(300) 
);
drop table DM_PAY_DUE;
create table DM_PAY_DUE(
PAY_ID                         varchar2(300)  primary key,
ITEM_ID                        varchar2(300) ,
LIAB_ID                        varchar2(300) ,
PAY_DUE_DATE                   varchar2(300) ,
POLICY_ID                      varchar2(300) ,
PAY_NUM                        varchar2(300) ,
FEE_AMOUNT                     varchar2(300) ,
PLAN_ID                        varchar2(300) ,
FEE_STATUS                     varchar2(300) 
);
drop table DM_BONUS_ALLOCATE;
create table DM_BONUS_ALLOCATE(
ALLOCATE_ID                    varchar2(300)  primary key,
ALLOCATE_DATE                  varchar2(300) ,
ITEM_ID                        varchar2(300) ,
POLICY_ID                      varchar2(300) ,
ALLOCATE_TYPE                  varchar2(300) ,
MONEY_ID                       varchar2(300) ,
FEE_AMOUNT                     varchar2(300) 
);
