날짜 관련 함수
MONTHS_BETWEEN (소수점 나와서 잘 사용 X)
SELECT hiredate, ROUND(MONTHS_BETWEEN(SYSDATE, hiredate),1) months_between
FROM emp;

ADD_MONTHS(활용도 많음)
SELECT hiredate, ADD_MONTHS(hiredate, 5)
FROM emp;

NEXT_DAY
SELECT NEXT_DAY(SYSDATE,7)
FROM dual;

LAST_DAY
변수를 입력받아 그 달의 마지막날이 나오는 쿼리 작성.
SELECT :yyyymm "원하는 달", TO_CHAR(LAST_DAY(TO_DATE(:yyyymm,'YYYYMM')),'DD') "마지막 일자"
FROM dual;


실행계획
EXPLAIN PLAN FOR
SELECT :yyyymm "원하는 달", TO_CHAR(LAST_DAY(TO_DATE(:yyyymm,'YYYYMM')),'DD') "마지막 일자"
FROM dual;

SELECT *
FROM TABLE(dbms_xplan.display);


sal(NUMBER) 컬럼의 값을 문자열 포맷팅 적용 (참고정도)
SELECT ename, sal, TO_CHAR(sal, 'L999,999.00')
FROM emp;

NULL과 관련된 함수
SELECT ename, comm, NVL(comm,0)nvl
FROM emp;

SELECT ename, sal, comm, NVL(comm,0)nvl, NVL2(comm,comm + sal, 0) nvl2
FROM emp;

SELECT ename, sal, comm, NVL(comm,0)nvl, NVL2(comm,comm + sal, 0) nvl2, NULLIF(comm+sal,1900) nullif
FROM emp;

SELECT ename, sal, comm, NVL(comm,0)nvl, NVL2(comm,comm + sal, 0) nvl2, NULLIF(comm+sal,1900) nullif, COALESCE(sal,0)coalesce
FROM emp;

조건문
emp테이블을 이용하여 hiredate에 따라 올해 건강보험 검진 대상자인지 조회하는 쿼리를 작성하세요.(홀수년도가 대상자)
SELECT empno, ename, hiredate, 
    case
        WHEN MOD(TO_NUMBER(TO_CHAR(hiredate,'YY')),2) = 0 THEN '건강검진 대상자'
        ELSE '건강검진 비대상자'
    END contact_to_DOCTOR
FROM emp;
