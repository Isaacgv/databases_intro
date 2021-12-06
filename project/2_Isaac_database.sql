

-- create tables

-- managed admins table
CREATE TABLE admins (
	admin_code_id varchar(20) NOT NULL,
	name_admin varchar(20) NOT NULL,
	last_name varchar(30) NOT NULL,
	password_admin varchar(50) NOT NULL,
	email varchar(30) NOT NULL,
	phone varchar(20) NOT NULL,
	type_admin varchar(50) NOT NULL,
	CONSTRAINT admins_pk PRIMARY KEY (admin_code_id)
);

-- candidates students table
CREATE TABLE candidates (
	name_candidate varchar(20) NOT NULL,
	last_name varchar(30) NOT NULL,
	phone varchar(20) NOT NULL,
	email varchar(30) NOT NULL,
	address varchar(100) NULL,
	zip_code varchar(20) NULL,
	country varchar(20) NOT NULL,
	city varchar(20) NOT NULL,
	passport varchar(30) NULL,
	year_register int2 NOT NULL,
	candidate_code_id varchar(20) NOT NULL,
	program_code_id varchar(20) NOT NULL,
	CONSTRAINT candidates_pk PRIMARY KEY (candidate_code_id)
);

-- programs table (AIs, DSA, SE, ISM, CS),
CREATE TABLE programs (
	program_code_id varchar(20) NOT NULL,
	name_program varchar(100) NOT NULL,
	CONSTRAINT program_pk PRIMARY KEY (program_code_id)
);

-- pays table
CREATE TABLE payments (
	payment_code_id varchar(20) NOT NULL,
	candidate_code_id varchar NOT NULL,
	date_payment date NOT NULL,
	description text NULL,
	type_payment varchar(20) NOT NULL,
	CONSTRAINT payments_pk PRIMARY KEY (payment_code_id)
);

-- school students table
CREATE TABLE students (
	student_code_id varchar(20) NOT NULL,
	school_email varchar(30) NOT NULL,
	candidate_code_id varchar NOT NULL,
	group_code_id varchar NOT NULL,
	password_student varchar(50) NOT NULL,
	CONSTRAINT students_pk PRIMARY KEY (student_code_id)
);

-- intake table (2 intakes by year)
CREATE TABLE groups_intake (
	group_code_id varchar(20) NOT NULL,
	year_group int2 NOT NULL,
	intake int2 NOT NULL,
	CONSTRAINT groups_intake_pk PRIMARY KEY (group_code_id)
);

-- courses taken by a group table
CREATE TABLE programs_courses (
	program_course_id varchar(20) NOT NULL,
	course_code_id varchar NOT NULL,
	program_code_id varchar NOT NULL,
	group_code_id varchar NOT NULL,
	hours int4 NOT NULL,
	CONSTRAINT programs_courses_pk PRIMARY KEY (program_course_id)
);

-- corses table
CREATE TABLE courses (
	course_code_id varchar(20) NOT NULL,
	name_course varchar(100) NOT NULL,
	CONSTRAINT courses_pk PRIMARY KEY (course_code_id)
);

-- student grades table
CREATE TABLE grades (
	grades_code_id varchar(20) NOT NULL,
	type_grade varchar(10) NOT NULL,
	weight float4 NULL,
	grade int2 NULL,
	individual bool NOT NULL,
	program_course_id varchar NOT NULL,
	student_code_id varchar NOT NULL,
	CONSTRAINT grades_pk PRIMARY KEY (grades_code_id)
);

-- student attendance by session tables
CREATE TABLE attendance (
	session_code_id varchar NOT NULL,
	student_code_id varchar NOT NULL,
	attendance bool NOT NULL,
	CONSTRAINT attendance_pk PRIMARY KEY (session_code_id, student_code_id)
);

-- sessions courses tables
CREATE TABLE sessions (
	session_code_id varchar(20) NOT NULL,
	start_time time(0) NULL,
	end_time time(0) NULL,
	day_session int2 NULL,
	year_session int2 NULL,
	month_session int2 NULL,
	room int4 NULL,
	kind varchar(50) NULL,
	school_teacher_id varchar NULL,
	program_course_id varchar NOT NULL,
	CONSTRAINT sessions_pk PRIMARY KEY (session_code_id)
);

-- teachers tables
CREATE TABLE teachers (
	teacher_code_id varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	personal_email varchar(30) NULL,
	nationality varchar(20) NULL,
	phone varchar(20) NOT NULL,
	iban varchar(30) NOT NULL,
	bank_name varchar(50) NULL,
	referenced bool NOT NULL,
	recruited bool NOT NULL,
	name_teacher varchar(20) NOT NULL,
	CONSTRAINT teachers_pk PRIMARY KEY (teacher_code_id)
);

-- school teachers tables
CREATE TABLE school_teachers (
	school_teacher_code_id varchar(20) NOT NULL,
	teacher_code_id varchar(20) NOT NULL,
	school_email varchar(30) NOT NULL,
	password_teacher varchar(30) NOT NULL,
	CONSTRAINT school_teachers_pk PRIMARY KEY (school_teacher_code_id)
);


-- define foreign keys

-- candidates students table relationated to programs table 
ALTER TABLE candidates 
ADD CONSTRAINT candidates_fk1
FOREIGN KEY (program_code_id) 
REFERENCES programs(program_code_id);

-- pays table relationated to candidates students table
ALTER TABLE payments 
ADD CONSTRAINT payments_fk1 
FOREIGN KEY (candidate_code_id) 
REFERENCES candidates(candidate_code_id);

-- students table relationated to candidates students table
ALTER TABLE students 
ADD CONSTRAINT students_fk1
FOREIGN KEY (candidate_code_id) 
REFERENCES candidates(candidate_code_id);

-- student table relationated to groups table
ALTER TABLE students 
ADD CONSTRAINT students_fk2 
FOREIGN KEY (group_code_id) 
REFERENCES groups_intake(group_code_id);

-- courses taken by a group table relationated to intake table
ALTER TABLE programs_courses 
ADD CONSTRAINT programs_courses_fk1 
FOREIGN KEY (group_code_id) 
REFERENCES groups_intake(group_code_id);

-- courses taken by a group table relationated to programs table
ALTER TABLE programs_courses 
ADD CONSTRAINT programs_courses_fk2 
FOREIGN KEY (program_code_id) 
REFERENCES programs(program_code_id);

-- courses taken by a group table relationated to course table
ALTER TABLE programs_courses 
ADD CONSTRAINT programs_courses_fk3 
FOREIGN KEY (course_code_id) 
REFERENCES courses(course_code_id);

-- grades table relationated to courses taken by a group table
ALTER TABLE grades 
ADD CONSTRAINT grades_fk1
FOREIGN KEY (program_course_id) 
REFERENCES programs_courses(program_course_id);

-- grades table relationated to students table
ALTER TABLE grades 
ADD CONSTRAINT grades_fk2 
FOREIGN KEY (student_code_id) 
REFERENCES students(student_code_id);

-- attendance table relationated to sessions table
ALTER TABLE attendance 
ADD CONSTRAINT attendance_fk1 
FOREIGN KEY (session_code_id) 
REFERENCES sessions(session_code_id);

-- attendance table relationated to student table
ALTER TABLE attendance 
ADD CONSTRAINT attendance_fk2 
FOREIGN KEY (student_code_id) 
REFERENCES students(student_code_id);

-- sessions table relationated to school teachers table
ALTER TABLE sessions 
ADD CONSTRAINT sessions_fk1 
FOREIGN KEY (school_teacher_id) 
REFERENCES school_teachers(school_teacher_code_id);

-- sessions table relationated to program courses table
ALTER TABLE sessions 
ADD CONSTRAINT sessions_fk2 
FOREIGN KEY (program_course_id) 
REFERENCES programs_courses(program_course_id);

-- school teachers table relationated to general teachers table
ALTER TABLE school_teachers 
ADD CONSTRAINT school_teachers_fk1 
FOREIGN KEY (teacher_code_id) 
REFERENCES teachers(teacher_code_id);


