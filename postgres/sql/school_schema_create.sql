CREATE DATABASE school_practice
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
    
create table students (
	id integer primary key,
	first_name text,
	last_name text,
	grade integer
);
create table teachers (
	id integer primary key,
	first_name text,
	last_name text
);
create table subjects (
	id integer primary key,
	name text,
	grade integer,
	description text
);
create table rooms (
	id integer primary key,
	capacity integer
);
create table periods (
	id integer primary key,
	start_time text,
	duration integer
);

Create table classes (
	id integer primary key,
	subject_id integer,
	period_id integer,
	teacher_id integer,
	room_id integer,
	foreign key(subject_id) references subjects(id),
	foreign key(period_id) references periods(id),
	foreign key(teacher_id) references teachers(id),
	foreign key(room_id) references rooms(id)
)

create table schedule (
	class_id integer,
	student_id integer,
	foreign key(class_id) references classes(id),
	foreign key(student_id) references students(id)
)