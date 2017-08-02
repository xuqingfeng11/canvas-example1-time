--mysql -uroot -p
--show databases;
set names gbk;
--show variables like '%char%'
create database if not exists emp default character set gbk;
create database if not exists stu default  character set gbk;
drop database if exists stu;
--use emp;

create table if not exists t_stu(
	num int primary key auto_increment,
	name varchar(33) not null default'小米' comment'姓名',
    class varchar(44) default '2班' comment '班级',
    stuTime date default '2017-03-04' comment '出生日期');

create table if not exists t_name(
	num int primary key auto_increment,
	name varchar(33) not null default '小米' comment '姓名',
    class varchar(44) default '2班' comment '班级',
    stuTime date default '2017-03-04' comment '出生日期');
create table if not exists t_class(
	num int primary key auto_increment  comment '学生编号',
	name varchar(33) not null default '小米' comment '姓名',
    class varchar(44) default '2班' comment '班级',
    stuTime date default '2017-03-04' comment '出生日期');
create table if not exists t_time(
	num int primary key auto_increment comment '学生编号',
	name varchar(33) not null default '小米' comment '姓名',
    class varchar(44) default '2班' comment '班级',
    stuTime date default '2017-03-04' comment '出生日期');


	drop table t_dept;
	create table if not exists t_dept(
		deptno int default '012565362' comment'部门编号',
		dname varchar(200) default  '部门名字' comment'部门名字' ,
		loc varchar(100) default '1' comment'部门位置'
	);
	drop table t_emp;
	create table if not exists t_emp(
		empno int primary key auto_increment default '05552565362' comment'员工编号',
		ename varchar(11) default '员工' comment'员工名字' ,
		job varchar(11) default'zhiyuan' comment'员工职位',
		mgr int constranit fk_depto foreign key(mgr) references t_temp(empno) default '35454124'comment '员工的领导的编号',
		hiredata date default '2017-02-05' comment'雇佣日期',
		sal  int(11) default '3500' comment'工资',
		comm  decimal(11,1) default '3500.2' comment'奖金',
		deptno int constranit fk_dept foreign key (deptno) references t_dept(deptno) default '256545345' comment'所在部门编号'
	);
	drop table t_salgrade;
	create table if not exists t_salgrade(
		grade varchar(22) default '1' comment'工资等级',
		losal int(11) default '3000' comment'最低工资' ,
		hisal double(15,1) default'100000000' comment'最高工资'
	);
	
--show tables;
rename table t_time to t_new;
--show tables;
desc t_stu;
insert into t_stu(name,class,stuTime) values('熊阿','二年级','2017-04-05');
insert into t_stu(name,class,stuTime) values('熊阿里1','一年级','2002-04-05');
insert into t_stu(name,class,stuTime) values('熊阿里2','二年级','2003-04-50');
insert into t_stu(name,class,stuTime) values('熊阿里3','二年级','2006-04-05');
insert into t_stu(name,class,stuTime) values('熊阿里4','三年级','2001-04-05');
insert into t_stu(name,class,stuTime) values('熊阿里5','二年级','2002-04-05');
insert into t_stu(name,class,stuTime) values('熊阿6','四年级','2003-04-05');
insert into t_stu(name,class,stuTime) values('熊阿里7','二年级','2000-04-05');
insert into t_stu(name,class,stuTime) values('熊阿里8','五年级','2002-04-05');
desc t_stu;
select * from t_stu;
alter table t_name drop column class;
delete from t_stu where name='熊阿里';
alter table t_stu add constranit fk_depto foreign key (class) references t_class(class);
alter table t_stu modify column stuTime varchar(22) not null;
select num,name,class,stuTime from t_stu where name like '%里%' ;
update t_stu set class=num*2 where name like '%里%';
	
insert into t_class(name,class,stuTime) values('熊阿','二年级','2017-04-05');
insert into t_class(name,class,stuTime) values('熊阿里1','一年级','2002-04-05');
insert into t_class(name,class,stuTime) values('熊阿里2','二年级','2003-04-50');
insert into t_class(name,class,stuTime) values('熊阿里3','二年级','2006-04-05');
insert into t_class(name,class,stuTime) values('熊阿里4','三年级','2001-04-05');
insert into t_class(name,class,stuTime) values('熊阿里5','二年级','2002-04-05');
insert into t_class(name,class,stuTime) values('熊阿6','四年级','2003-04-05');
insert into t_class(name,class,stuTime) values('熊阿里7','二年级','2000-04-05');
insert into t_class(name,class,stuTime) values('熊阿里8','五年级','2002-04-05');