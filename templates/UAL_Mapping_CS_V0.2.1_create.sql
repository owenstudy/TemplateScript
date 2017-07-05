drop table DM_SA_CHANGE;
create table DM_SA_CHANGE(
LIST_ID                        varchar2(300)  primary key,
POLICY_ID                      varchar2(300) ,
ITEM_ID                        varchar2(300) ,
START_DATE                     varchar2(300) ,
SA                             varchar2(300) ,
UNIT                           varchar2(300) ,
BENEFIT_LEVEL                  varchar2(300) 
);
drop table DM_PRODUCT_LIABILITY_CHANGE;
create table DM_PRODUCT_LIABILITY_CHANGE(
LIST_ID                        varchar2(300)  primary key,
POLICY_ID                      varchar2(300) ,
ITEM_ID                        varchar2(300) ,
CHANGE_DATE                    varchar2(300) ,
LIABILITY_STATUS               varchar2(300) ,
LIABILITY_CHANGED              varchar2(300) ,
LAPSE_CAUSE                    varchar2(300) ,
END_CAUSE                      varchar2(300) 
);
