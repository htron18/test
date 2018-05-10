set names utf8;
set foreign_key_checks=0;
drop database if exists miamiburgerdb;
create database miamiburgerdb;
use miamiburgerdb;

create table user_info(
id int,
user_id varchar(255),
password varchar(255)
);

insert into user_info values
(1,"taro","123"),
(2,"guest","guest01"),
(3,"miami","miami01");