
select SUB_SEQ_NUM, STUDENT_ID, STUDENT_NAME, PROFESSOR_ID, PROFESSOR_NAME, PROFESSOR_GRADE, STUDENT_SCORE
from ASSESSMENT;

--조회
SELECT A.SUB_SEQ_NUM, S.SUB_NAME, A.STUDENT_ID, A.STUDENT_NAME, A.PROFESSOR_ID, A.PROFESSOR_NAME, A.PROFESSOR_GRADE, A.STUDENT_SCORE
		FROM ASSESSMENT A, SUBJECT S
		WHERE A.SUB_SEQ_NUM = S.SUB_SEQ
		AND A.PROFESSOR_ID='교수1'
		
--과목명 조회
SELECT DISTINCT A.SUB_SEQ_NUM, S.SUB_NAME
		FROM ASSESSMENT A, SUBJECT S
		WHERE A.SUB_SEQ_NUM = S.SUB_SEQ
		AND A.PROFESSOR_ID='교수1'

--조인 조회
SELECT S.SUB_SEQ, S.SUB_CATEGORY, S.MAJOR_NUMBER, S.SUB_GRADE, S.SUB_SEMESTER,
						S.SUB_NAME, S.PROFESSOR_ID, S.PROFESSOR_NAME, S.SUB_INFO, S.SUB_ROOM, S.SUB_WEEK,
						S.SUB_S_CLASS, S.SUB_E_CLASS, S.SUB_MAX_STUDENT, S.SUB_NOW_STUDENT, S.SUB_POINT,
						S.SUB_REF, S.SUB_PARENT
	FROM ASSESSMENT A, SUBJECT S
	WHERE A.SUB_SEQ_NUM = S.SUB_SEQ
	AND A.STUDENT_ID='jiyuns'
	

--입력
UPDATE ASSESSMENT
SET STUDENT_SCORE = 0
WHERE SUB_SEQ_NUM = 1
AND STUDENT_ID = 'jiyuns'