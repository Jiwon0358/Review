테이블 컬럼 구성 정보 확인
DESC emp;


SELECT empno, ename, sal, sal +500, 500
FROM emp;

prod 테이블의 prod_id 를 id로 prod_name 을 name으로 컬럼명을 변경하시오.
SELECT prod_id id, prod_name name
FROM prod;



users 테이블의 userid 컬럼과 usernm 컬럼을 결합
① 연산자만 사용해서
SELECT userid || usernm
FROM users

②CONCAT 함수만 사용해서
SELECT CONCAT(userid, usernm)
FROM users


emp 테이블에서 hiredate 값이 1982년 1월 1일 이후인 사원들만 조회
SELECT ename, hiredate 
FROM emp
WHERE hiredate >= TO_DATE('1982/01/01','yyyy/mm/dd');


입사한날짜(hiredate)가 1982년 이후, 1983년 이전인 사원들을 나타내시오.
1.BETWEEN 함수 사용
SELECT ename, hiredate
FROM emp
WHERE hiredate BETWEEN TO_DATE('19820101','yyyymmdd') AND TO_DATE('19830101','yyyymmdd');
2.비교연산자 사용
SELECT ename, hiredate
FROM emp
WHERE hiredate >= TO_DATE('19820101','yyyymmdd') AND hiredate <= TO_DATE('19830101','yyyymmdd');

사원의 소속 부서가 10번 혹은 20번인 사람을 조히하는 SQL
SELECT *
FROM emp
WHERE deptno in(10,20);



