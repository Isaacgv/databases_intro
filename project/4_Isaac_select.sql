-- view courses assigned of one program
SELECT  gi.year_group, gi.intake, p.name_program, pc.program_code_id, pc.group_code_id, c.name_course 
FROM  programs_courses pc
JOIN courses c 
ON c.course_code_id = pc.course_code_id 
JOIN programs p 
ON p.program_code_id = pc.program_code_id 
JOIN groups_intake gi 
ON pc.group_code_id = gi.group_code_id 
WHERE pc.program_code_id = 'AIS'


-- select school teachers bank account
SELECT t.iban, t.bank_name, t.name_teacher, t.last_name 
FROM school_teachers st 
JOIN teachers t 
ON t.teacher_code_id = st.teacher_code_id 


-- select one teacher sessions
SELECT s.start_time, s.end_time, s.day_session, s.month_session, 
s.year_session, s.room, s.kind, t.name_teacher, t.last_name, c.name_course 
FROM sessions s 
JOIN school_teachers st 
ON st.school_teacher_code_id = s.school_teacher_id 
JOIN teachers t 
ON t.teacher_code_id = st.teacher_code_id 
JOIN programs_courses pc 
ON pc.program_course_id = s.program_course_id 
JOIN courses c 
ON c.course_code_id = pc.course_code_id 
WHERE t.name_teacher = 'Matheus' and t.last_name='Descart'

-- select attendance list of the sessions
SELECT a.session_code_id, a.attendance, s.school_email, c.name_candidate, 
c.last_name, cou.name_course
FROM attendance a 
JOIN students s 
ON s.student_code_id = a.student_code_id 
JOIN candidates c 
ON c.candidate_code_id = s.candidate_code_id 
JOIN sessions se
ON se.session_code_id = a.session_code_id 
JOIN programs_courses pc 
ON pc.program_course_id = se.program_course_id 
JOIN programs_courses pg 
ON pg.course_code_id = pc.course_code_id 
JOIN courses cou
ON cou.course_code_id = pg.course_code_id 

-- select grades of one student by student code
SELECT g.type_grade, g.weight, g.grade, g.program_course_id, g.student_code_id, 
s.student_code_id 
FROM grades g 
JOIN students s
ON s.student_code_id = g.student_code_id 
WHERE s.student_code_id = '10342'
ON s.student_code_id = g.student_code_id 
WHERE s.student_code_id = '10342'

