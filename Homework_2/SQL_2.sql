SQL_DDL
Первая часть.

Таблица employees
Создать таблицу employees:

create table  salary (
   id serial primary key,
   employee_name Varchar(50) not null
);

Наполнить таблицу employee 70 строками:
insert into employee (employee_name)
values      (Валерия),
            (Гера),
            (Регина),
            (Василиса),
            (Прасковья),
            (Инна),
            (Елизавета),
            (Ярослава),
            (Светлана),
            (Фаина),
            (Эмма),
            (Людмила),
            (Шарлота),
            (Федосья),
            (Екатерина),
            (Божена),
            (Полина),
            (Жаклин),
            (Гаянэ),
            (Лариса),
            (Злата),
            (Раиса),
            (Беатриса),
            (Флорентина),
            (Эдита),
            (Оксана),
            (Галина),
            (Люся),
            (Рената),
            (Устинья),
            (Клементина),
            (Дарья),
            (Марта),
            (Янина),
            (Федосья),
            (Софья),
            (Ярослава),
            (Зинаида),
            (Борислава),
            (Юнона),
            (Инна),
            (Мирослав),
            (Николай),
            (Харитон),
            (Устин),
            (Тимур),
            (Герман),
            (Виктор),
            (Ираклий),
            (Ростислав),
            (Феликс),
            (Сергей),
            (Эрик),
            (Борис),
            (Пётр),
            (Даниил),
            (Яков),
            (Альберт),
            (Мирослав),
            (Игнат),
            (Илья),
            (Егор),
            (Антон),
            (Андрей),
            (Олег),
            (Кирилл),
            (Алексей),
            (Пенелопа),
            (Кристина),
            (Наталья);


Таблица salary
Создать таблицу salary

create table  salary (
   id Serial  primary key,
   monthly_salary Int not null
);

Наполнить таблицу salary 15 строками:
Insert into salary (monthly_salary)
values  (1000),
        (1100),
        (1200),
        (1300),
        (1400),
        (1500),
        (1600),
        (1700),
        (1800),
        (1900),
        (2000),
        (2100),
        (2200),
        (2300),
        (2400),
        (2500);


Таблица employee_salary

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null

create table  employee_salary (
   id Serial  primary key,
   employee_id Int not null unique,
   salary_id Int not null
);

Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

Insert into employee_salary (employee_id,salary_id)
values  (20,2),
        (21,5),
        (22,8),
	(29,10),
	(24,11),
	(25,13),
	(30,15),
	(27,13),
	(28,4),
	(3,7),
	(1,4),
	(5,9)
	(40,13),
	(23,4),
	(11,2),
	(52,10),
	(15,13),
	(26,4),
	(16,1),
	(33,7),
	(63,5),
	(50,9),
	(2,8),
	(41,15),
	(4,6),
	(56,2),
	(45,10),
	(70,13),
	(62,4),
	(55,1),
	(67,7),
	(6,2),
	(8,5),
	(7,8),
	(9,10),
	(10,11),
	(17,13),
	(12,15),
	(13,13),
	(14,4),
	(18,1),
	(19,7);
	
Таблица roles
Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
 
 create table roles (
id serial  primary key,
role_name  int not null unique
);
	 
Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar (30) using role_name :: varchar(30);

Наполнить таблицу roles 20 строками:
insert into roles (role_name)
values		('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

Таблица roles_employee
Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee ( 
		id Serial  primary key,
		employee_id Int not null unique, 
		role_id Int not null, 
		foreign key (role_id)
		references  roles (id),
		foreign key (employee_id)
		references  employees (id)
);

Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id,role_id)
values (7,2),
(20,4),
(3,9),
(5,13),
(23,4),
(11,2),
(10,9),
(40,13),
(21,3),
(34,8),
(6,7),
(24,1),
(22,12),
(1,5),
(2,6),
(4,10),
(8,11),
(9,14),
(12,15),
(13,17),
(14,18),
(15,19),
(16,20),
(17,11),
(18,12),
(19, 14),
(25,10),
(26,1),
(27,7),
(28,12),
(29,15),
(30,19),
(31,20),
(32,17),
(33,10),
(35,5),
(36,6),
(37,8),
(38,9),
(39,3);



