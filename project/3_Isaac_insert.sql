-- insert data table ADMINS
INSERT INTO admins
(admin_code_id, name_admin, last_name, password_admin, email, phone, type_admin)
VALUES('JUNGOMPEDA', 'Juan', 'Gomez', '$!"DE23D', 'gomez@hgmail.com', '557293236', 'pedagogic');
INSERT INTO admins
(admin_code_id, name_admin, last_name, password_admin, email, phone, type_admin)
VALUES('MARCHUCOOR', 'Maria', 'Chu', 'sfr23rv·"R', 'maria.chu@gmail.com', '559238279', 'coordinator');
INSERT INTO admins
(admin_code_id, name_admin, last_name, password_admin, email, phone, type_admin)
VALUES('JALZETSUPP', 'Jalal', 'Zet', '42dwqf3t2', 'zet@gmail.com', '552314313', 'support ');
INSERT INTO admins
(admin_code_id, name_admin, last_name, password_admin, email, phone, type_admin)
VALUES('FATLOUDIR', 'Fatah', 'Loui', 'FF%·TG2g4', 'loui@gmail.com', '241564413', 'director');
INSERT INTO admins
(admin_code_id, name_admin, last_name, password_admin, email, phone, type_admin)
VALUES('ROBGRAASSI', 'Robert', 'Gran', 'ERF&%622', 'robertm@gmail.com', '345156233', 'assistant');

-- insert data table PROGRAMS
INSERT INTO programs
(program_code_id, name_program)
VALUES('AIS', 'Master of Science in Artificial Intelligence Systems');
INSERT INTO programs
(program_code_id, name_program)
VALUES('AIMS', 'Master of Science Artificial Intelligence for Marketing Strategy');
INSERT INTO programs
(program_code_id, name_program)
VALUES('CS', 'Master of Science in Computer Science');
INSERT INTO programs
(program_code_id, name_program)
VALUES('DSA', 'Master of Science in  Data Science & Analytics');
INSERT INTO programs
(program_code_id, name_program)
VALUES('SE', 'Master of Science in  Software Engineering');

-- insert data table CANDIDTES
INSERT INTO candidates
(name_candidate, last_name, phone, email, address, zip_code, country, city, passport, year_register, candidate_code_id, program_code_id)
VALUES('Leandro', 'Cleentine', '558202845', 'lcleentine@gmail.com', '354 Rue Bernalli', '75012', 'France', 'Paris', '4244355', 2021, '42423', 'AIMS');
INSERT INTO candidates
(name_candidate, last_name, phone, email, address, zip_code, country, city, passport, year_register, candidate_code_id, program_code_id)
VALUES('Martin', 'Roc', '559088715', 'martin.roc@gmail.com', '19 Rue Nicolai', '75014', 'France', 'Paris', '3454351', 2021, '42324', 'AIS');
INSERT INTO candidates
(name_candidate, last_name, phone, email, address, zip_code, country, city, passport, year_register, candidate_code_id, program_code_id)
VALUES('Josue', 'Martellie', '252442420', 'jmartellie@gmail.com', '30 Rue Martin', '75011', 'France', 'Paris', '2354534', 2020, '34435', 'DSA');
INSERT INTO candidates
(name_candidate, last_name, phone, email, address, zip_code, country, city, passport, year_register, candidate_code_id, program_code_id)
VALUES('David', 'Marc', '880427245', 'dmarc@gmail.com', '45 Rue Tristan', '75002', 'France', 'Paris', '2422346', 2020, '42345', 'SE');
INSERT INTO candidates
(name_candidate, last_name, phone, email, address, zip_code, country, city, passport, year_register, candidate_code_id, program_code_id)
VALUES('Marie', 'Stard', '424240983', 'Marie.S@gmail.com', '6 Rue Triosem', '75007', 'France', 'Paris', '2342424', 2021, '5335', 'CS');

-- insert data table GROUPS_INTAKE
INSERT INTO groups_intake
(group_code_id, year_group, intake)
VALUES('2021-1', 2021, 1);
INSERT INTO groups_intake
(group_code_id, year_group, intake)
VALUES('2021-2', 2021, 2);
INSERT INTO groups_intake
(group_code_id, year_group, intake)
VALUES('2020-1', 2020, 1);
INSERT INTO groups_intake
(group_code_id, year_group, intake)
VALUES('2020-2', 2020, 2);

-- insert data table STUDENTS
INSERT INTO students
(student_code_id, school_email, candidate_code_id, group_code_id, password_student)
VALUES('10342', 'cleentine@epita.com', '42423', '2020-1', '6ttf354');
INSERT INTO students
(student_code_id, school_email, candidate_code_id, group_code_id, password_student)
VALUES('42425', 'Stard@epita.com', '5335', '2021-1', '34f36%&');
INSERT INTO students
(student_code_id, school_email, candidate_code_id, group_code_id, password_student)
VALUES('3444', 'martellie@epita.com', '34435', '2021-2', 'vt363A63·$&');

-- insert data table PAYMENTS
INSERT INTO payments
(payment_code_id, candidate_code_id, date_payment, description, type_payment)
VALUES('INCRIP1', '34435', '2020-12-02', NULL, 'inscription');
INSERT INTO payments
(payment_code_id, candidate_code_id, date_payment, description, type_payment)
VALUES('1PER1', '34435', '2020-12-10', NULL, 'Semester 1');
INSERT INTO payments
(payment_code_id, candidate_code_id, date_payment, description, type_payment)
VALUES('INCRIP2', '42423', '2020-12-05', NULL, 'inscription');
INSERT INTO payments
(payment_code_id, candidate_code_id, date_payment, description, type_payment)
VALUES('2PER1', '42423', '2020-12-20', NULL, 'Semester 1');
INSERT INTO payments
(payment_code_id, candidate_code_id, date_payment, description, type_payment)
VALUES('INCRIP3', '5335', '2020-12-08', NULL, 'inscription');
INSERT INTO payments
(payment_code_id, candidate_code_id, date_payment, description, type_payment)
VALUES('3PER1', '5335', '2020-12-17', NULL, 'Semester 1');

-- insert data table COURSE
INSERT INTO courses
(course_code_id, name_course)
VALUES('FUTECH1', 'Introduction to Python');
INSERT INTO courses
(course_code_id, name_course)
VALUES('FUDATA1', 'Introduction Database');
INSERT INTO courses
(course_code_id, name_course)
VALUES('FUTEO1', 'Linear Algebra');
INSERT INTO courses
(course_code_id, name_course)
VALUES('FUALGO2', 'Algorithmic');

-- insert data table PROGRAMS_COURSES
INSERT INTO programs_courses
(program_course_id, course_code_id, program_code_id, group_code_id, hours)
VALUES('AIMSPYTH', 'FUTECH1', 'AIMS', '2021-2', 100);
INSERT INTO programs_courses
(program_course_id, course_code_id, program_code_id, group_code_id, hours)
VALUES('AISDATABASE', 'FUDATA1', 'AIS', '2021-2', 100);
INSERT INTO programs_courses
(program_course_id, course_code_id, program_code_id, group_code_id, hours)
VALUES('CSDATABASE', 'FUDATA1', 'CS', '2021-2', 100);

-- insert data table TEACHERS
INSERT INTO teachers
(teacher_code_id, last_name, personal_email, nationality, phone, iban, bank_name, referenced, recruited, name_teacher)
VALUES('JOHMARTEXT', 'Mart', 'john.mart@gmail.com', 'French', '55343466', 'FR2324252', 'Paris Bank', false, false, 'John');
INSERT INTO teachers
(teacher_code_id, last_name, personal_email, nationality, phone, iban, bank_name, referenced, recruited, name_teacher)
VALUES('MATDESTLOC', 'Descart', 'M.descart@gmail.com', 'French', '55564678', 'FR2636565', 'Hello Bank', true, true, 'Matheus');
INSERT INTO teachers
(teacher_code_id, last_name, personal_email, nationality, phone, iban, bank_name, referenced, recruited, name_teacher)
VALUES('RITROLLOC', 'Rolan', 'Rita.rolan@gmail.com', 'French', '5567877', 'FR45346366', 'Credit Bank', true, true, 'Rita');

-- insert data table SCHOOL_TEACHERS
INSERT INTO school_teachers
(school_teacher_code_id, teacher_code_id, school_email, password_teacher)
VALUES('MATDEST1223', 'MATDESTLOC', 'descart@epita.com', '2354feEFE%');
INSERT INTO school_teachers
(school_teacher_code_id, teacher_code_id, school_email, password_teacher)
VALUES('RITROL3434', 'RITROLLOC', 'rolan@epita.com', '#$%6FE$%');

-- insert data table SESSIONS
INSERT INTO sessions
(session_code_id, start_time, end_time, day_session, year_session, room, kind, school_teacher_id, program_course_id, month_session)
VALUES('DB2021-2', '09:00:00', '12:00:00', 12, 2021, 608, 'Online lectures ', 'MATDEST1223', 'CSDATABASE', 11);
INSERT INTO sessions
(session_code_id, start_time, end_time, day_session, year_session, room, kind, school_teacher_id, program_course_id, month_session)
VALUES('PYTH2021-2', '14:00:00', '18:00:00', 15, 2021, 604, 'Regular on-campus lectures', 'RITROL3434', 'AIMSPYTH', 11);

-- insert data table GRADES
INSERT INTO grades
(type_grade, weight, grade, individual, program_course_id, student_code_id, grades_code_id)
VALUES('quiz', 0.5, 18, true, 'AISDATABASE', '10342', 'AISDABAS1-10341');
INSERT INTO grades
(type_grade, weight, grade, individual, program_course_id, student_code_id, grades_code_id)
VALUES('quiz', 0.5, 16, true, 'AISDATABASE', '3444', 'AISDABAS1-3444');

-- insert data table ATTENDANCE
INSERT INTO attendance
(session_code_id, student_code_id, attendance)
VALUES('DB2021-2', '10342', false);
INSERT INTO attendance
(session_code_id, student_code_id, attendance)
VALUES('DB2021-2', '3444', false);
INSERT INTO attendance
(session_code_id, student_code_id, attendance)
VALUES('DB2021-2', '42425', false);




