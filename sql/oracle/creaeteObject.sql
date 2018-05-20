-- Create table
create table SYS_AUDIT_LOG
(
  audit_type       VARCHAR2(2),
  object_id        VARCHAR2(36),
  object_type      VARCHAR2(36),
  user_id          VARCHAR2(36),
  user_name        VARCHAR2(36),
  descmsg          VARCHAR2(255),
  create_date      DATE,
  id               VARCHAR2(36) not null,
  log_ip           VARCHAR2(255),
  sys_instructions VARCHAR2(6),
  unit_id          VARCHAR2(36)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 40M
    next 8K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the columns 
comment on column SYS_AUDIT_LOG.audit_type
  is '数据类型CODE_SJLX)';
comment on column SYS_AUDIT_LOG.object_id
  is '目标类型ID';
comment on column SYS_AUDIT_LOG.object_type
  is '目标类型';
comment on column SYS_AUDIT_LOG.user_id
  is '操作人ID';
comment on column SYS_AUDIT_LOG.user_name
  is '操作人姓名';
comment on column SYS_AUDIT_LOG.descmsg
  is '描述,json格式:{msg:a删除}';
comment on column SYS_AUDIT_LOG.create_date
  is '操作日期';
comment on column SYS_AUDIT_LOG.id
  is 'ID';
comment on column SYS_AUDIT_LOG.log_ip
  is '操作人IP';
comment on column SYS_AUDIT_LOG.sys_instructions
  is '系统使用说明类型 0--上传资源;1--案件分析';
-- Create/Recreate primary, unique and foreign key constraints 
alter table SYS_AUDIT_LOG
  add constraint PK_SYS_AUDIT_LOG_ID primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 13M
    next 1M
    minextents 1
    maxextents unlimited
  );
