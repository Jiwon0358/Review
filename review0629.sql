1. emp 테이블에서 페이징처리를 하여 11~20개를 볼 수 있도록 가상 컬럼을 부여한 empno, ename을 조회하고, ename으로 정렬하는 쿼리를 작성하여라.
SELECT *
FROM(SELECT ROWNUM rn , a.*
     FROM(SELECT empno, ename
           FROM emp
           ORDER BY ename)a)
WHERE rn BETWEEN (:page -1) * :pagesize +1 AND :page * :pagesize;

1-1emp 테이블에서 페이징처리를 하여 11~20개를 볼 수 있도록 가상 컬럼을 부여한 empno, ename을 조회하고, ename으로 정렬하는 쿼리를 작성하여라.
    SELECT *
    FROM(SELECT ROWNUM rn, c.*
        FROM(SELECT empno, ename
            FROM emp
            ORDER BY ename) c)
    WHERE rn BETWEEN (:page -1) * :pagesize +1 AND :page * :pagesize;
    
2. 사원 이름이 smith인 사람 찾기 (where절에서도 함수 사용 가능)
SELECT *
FROM emp
WHERE ename = UPPER('smith');

3.반올림 함수 round 사용하여 154.54를 소수점 첫번째 자리까지 나타내는 쿼리 작성
SELECT ROUND(154.54,1)
FROM dual;

4.반올림 함수를 사용하여 154.54를 정수로 나타내는 쿼리작성
SELECT ROUND(154.54)
FROM dual;

5. 반올림 함수를 사용하여 154.54를 반올림하여 10자리까지 나타내는 쿼리작성
SELECT ROUND(154.54, -1)
FROM dual;

6. 500을 2로 나눴을 때 나머지와 몫을 구하는 쿼리를 작성하여라.
SELECT MOD(500,2) , TRUNC(500/2)
FROM dual;

7. 현재 날짜에서 3시간 뒤의 DATE 를 구하려면?
SELECT TO_CHAR(SYSDATE + (1/24) *3 ,'YYYYMMDD HH24-MI-SS')
FROM dual;