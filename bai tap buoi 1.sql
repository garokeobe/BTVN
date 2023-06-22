drop database if exists Testing_System_Assignment_1;
create database Testing_System_Assignment_1;
use Testing_System_Assignment_1;

drop table if exists Department;
create table Department(
	DepartmentID int,
    DepartmentName varchar(40)
);
drop table if exists Position;
create table Position_(
	PositionID int,
    PositionName varchar(40)
);
drop table if exists Account_;
create table Account_(
	AccountID int,
    Email varchar(50),
    Username varchar(50),
    FullName varchar(50),
    DepartmentID int,
    PositionID int,
    CreateDate date
);
drop table if exists Group_;
create table Group_(
	GroupID int,
    GroupName varchar(50),
    CreatorID int,
    CreateDate date
);
drop table if exists GroupAccount;
create table GroupAccount(
	GroupID int,
    AccountID int,
    JoinDate date
);
drop table if exists TypeQuestion;
create table TypeQuestion(
	TypeID int,
    TypeName varchar(50)
);
drop table if exists CategoryQuestion;
create table CategoryQuestion(
	CategoryID int,
    CategoryName varchar(50)
);
drop table if exists Question;
create table Question(
	QuestionID int,
    Content varchar(200),
    CategoryID int,
    TypeID int,
    CreatorID int,
    CreateDate date
);
drop table if exists Answer;
create table Answer(
	AnswerID int,
    Content varchar(200),
    QuestionID int,
    isCorrect varchar(10)
);
drop table if exists Exam;
create table Exam(
	ExamID int,
    MaCode varchar(20),
    Title varchar(30),
    CategoryID int,
    Duration int,
    CreatorID int,
    CreateDate date
);
drop table if exists ExamQuestion;
create table ExamQuestion(
	ExamID int,
    QuestionID int
);
