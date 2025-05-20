create table persons(
    id int primary key auto_increment,
    full_name nvarchar(255) not null,
    national_id nvarchar(10)
);

create table professors(
    id int primary key auto_increment,
    person_id int not null,
    professor_code varchar(15) unique not null,
    department nvarchar(40),
    scientific_rank nvarchar(70),

    foreign key (person_id) references persons(id)

);



create table students(
    id int primary key  auto_increment,
    person_id int not null,
    student_code nvarchar(15) unique not null,
    major nvarchar(30),

    foreign key (person_id) references persons(id)
);




create table menu(
    id int primary key auto_increment,
    food_name nvarchar(255) not null ,
    price decimal(8,2) not null ,
    menu_date date not null
);





create table reservations(
    id int primary key auto_increment,
    person_id int not null,
    menu_id int not null,
    amount nvarchar(4),


    foreign key (person_id) references persons(id),
    foreign key (menu_id) references menu(id)
);