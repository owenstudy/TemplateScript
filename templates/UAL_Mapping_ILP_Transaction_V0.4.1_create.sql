drop table DM_CAPITAL_DISTRIBUTE;
create table DM_CAPITAL_DISTRIBUTE(
CAPITAL_ID                     varchar2(300)  primary key,
DISTRI_DATE                    varchar2(300) ,
ITEM_ID                        varchar2(300) ,
POLICY_ID                      varchar2(300) ,
DISTRI_AMOUNT                  varchar2(300) ,
DISTRI_TYPE                    varchar2(300) ,
CAPITAL_SOURCE                 varchar2(300) ,
ACCOUNTING_DATE                varchar2(300) ,
INSERT_DATE                    varchar2(300) ,
UPDATE_TIME                    varchar2(300) ,
INSERTED_BY                    varchar2(300) ,
UPDATED_BY                     varchar2(300) ,
CHANGE_ID                      varchar2(300) 
);
drop table DM_FUND_TRANS;
create table DM_FUND_TRANS(
TRANS_ID                       varchar2(300)  primary key,
ITEM_ID                        varchar2(300) ,
FUND_CODE                      varchar2(300) ,
POLICY_ID                      varchar2(300) ,
TRANS_CODE                     varchar2(300) ,
TRANS_AMOUNT                   varchar2(300) ,
TRANS_UNITS                    varchar2(300) ,
TRANS_PRICE                    varchar2(300) ,
DEAL_TIME                      varchar2(300) ,
APPLY_ID                       varchar2(300) ,
FUND_PURC_PRICE                varchar2(300) ,
FUND_SELL_PRICE                varchar2(300) ,
REASON                         varchar2(300) ,
BALANCE_UNITS_BF               varchar2(300) ,
PRICING_EFFECTIVE_DATE         varchar2(300) ,
INSERT_TIME                    varchar2(300) ,
UPDATE_TIME                    varchar2(300) ,
INSERTED_BY                    varchar2(300) ,
UPDATED_BY                     varchar2(300) ,
CHANGE_ID                      varchar2(300) 
);
drop table DM_FUND_CASH;
create table DM_FUND_CASH(
CASH_ID                        varchar2(300)  primary key,
ITEM_ID                        varchar2(300) ,
ACCOUNT_CODE                   varchar2(300) ,
POLICY_ID                      varchar2(300) ,
FEE_AMOUNT                     varchar2(300) ,
ADD_REDUCE                     varchar2(300) ,
DISTRI_TYPE                    varchar2(300) ,
DISTRI_DATE                    varchar2(300) ,
CAPITAL_SOURCE                 varchar2(300) ,
CAPITAL_ID                     varchar2(300) ,
ACCOUNTING_DATE                varchar2(300) ,
APPLY_ID                       varchar2(300) ,
INSERT_TIME                    varchar2(300) ,
UPDATE_TIME                    varchar2(300) ,
INSERTED_BY                    varchar2(300) ,
UPDATED_BY                     varchar2(300) ,
CHANGE_ID                      varchar2(300) 
);
drop table DM_FUND_TRANS_APPLY;
create table DM_FUND_TRANS_APPLY(
APPLY_ID                       varchar2(300)  primary key,
ITEM_ID                        varchar2(300) ,
FUND_CODE                      varchar2(300) ,
POLICY_ID                      varchar2(300) ,
TRANS_CODE                     varchar2(300) ,
APPLY_AMOUNT                   varchar2(300) ,
APPLY_UNITS                    varchar2(300) ,
APPLY_TIME                     varchar2(300) ,
DISTRI_TYPE                    varchar2(300) ,
INSERT_TIME                    varchar2(300) ,
UPDATE_TIME                    varchar2(300) ,
INSERTED_BY                    varchar2(300) ,
UPDATED_BY                     varchar2(300) ,
CHANGE_ID                      varchar2(300) 
);
