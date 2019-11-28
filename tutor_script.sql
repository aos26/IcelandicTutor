create table users
(
  id        bigserial not null
    constraint users_pk
      primary key,
  name      varchar(255),
  user_name varchar(255),
  password  varchar(255),
  email     varchar(255),
  score     bigint
);

alter table users
  owner to andrea;

create unique index users_id_uindex
  on users (id);

create table postitnote
(
  id   bigserial not null
    constraint postitnote_pkey
      primary key,
  name varchar(255),
  note varchar(255)
);

alter table postitnote
  owner to andrea;

create table categories
(
  id   bigserial not null
    constraint categories_pk
      primary key,
  name varchar(255)
);

alter table categories
  owner to andrea;

create unique index categories_id_uindex
  on categories (id);

create table level
(
  id   bigserial not null
    constraint level_pk
      primary key,
  name varchar(255)
);

alter table level
  owner to andrea;

create table question
(
  id            bigserial not null
    constraint questionword_pk
      primary key,
  question_word varchar(255),
  answer        varchar(255),
  wrong_answer1 varchar(255),
  wrong_answer2 varchar(255),
  cat_id        bigint    not null
    constraint question_categories_id_fk
      references categories,
  lvl_id        bigint
    constraint question_level_id_fk
      references level
);

alter table question
  owner to andrea;

create unique index questionword_id_uindex
  on question (id);

create unique index level_id_uindex
  on level (id);


