drop table DM_POLICY_ACCOUNT;
create table DM_POLICY_ACCOUNT(
ACCOUNT_ID                     varchar2(300)  primary key,
ACCOUNT_TYPE                   varchar2(300) ,
POLICY_ID                      varchar2(300) ,
CAPITAL_BALANCE                varchar2(300) ,
INTEREST_CAPITAL               varchar2(300) ,
INTEREST_BALANCE               varchar2(300) ,
INTEREST_SUM                   varchar2(300) ,
CAPITALIZED_DATE               varchar2(300) ,
BALANCE_DATE                   varchar2(300) ,
INSERT_TIME                    varchar2(300) ,
UPDATE_TIME                    varchar2(300) 
);
drop table DM_PAY_PLAN;
create table DM_PAY_PLAN(
PLAN_ID                        varchar2(300)  primary key,
ITEM_ID                        varchar2(300) ,
POLICY_ID                      varchar2(300) ,
PAY_DUE_DATE                   varchar2(300) ,
PAY_NUM                        varchar2(300) ,
BEGIN_DATE                     varchar2(300) ,
END_DATE                       varchar2(300) ,
PAY_STATUS                     varchar2(300) ,
PAY_PLAN_TYPE                  varchar2(300) ,
PAY_OPTION                     varchar2(300) ,
PRE_ALLOC_DUE_DATE             varchar2(300) ,
PAY_PERIOD                     varchar2(300) ,
PAY_YEAR                       varchar2(300) ,
PLAN_FREQ                      varchar2(300) ,
END_PERIOD                     varchar2(300) ,
END_YEAR                       varchar2(300) 
);
drop table DM_PAY_PLAN_PAYEE;
create table DM_PAY_PLAN_PAYEE(
LIST_ID                        varchar2(300)  primary key,
PLAN_ID                        varchar2(300) ,
PAY_MODE                       varchar2(300) ,
PAYEE_ID                       varchar2(300) ,
PAYEE_RATE                     varchar2(300) ,
PAYEE_ADDRESS_ID               varchar2(300) ,
PAYEE_ACCOUNT_ID               varchar2(300) 
);
