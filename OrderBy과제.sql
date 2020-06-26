ORDER BY 실습 
1. emp 테이블에서 관리자가 있는 사람들만 조회하고, 
   직군(job)순으로 오름차순 정렬하고, 직군이 같을 경우 사번이 큰 사원이 먼저 조회되도록 쿼리를 작성하시오.
  
   SELECT *
   FROM emp
   WHERE mgr IS NOT NULL
   ORDER BY job, empno DESC;
   
 2. emp 테이블에서 10번 부서(deptno) 혹은 30번 부서에 속하는 사람 중 
    급여가(sal)가 1500이 넘는 사람들만 조회하고 이름으로 내림차순 정렬되도록 쿼리를 작성하세요.
    SELECT *
    FROM emp
    WHERE deptno IN (10,30)
      AND sal > 1500
    ORDER BY ename DESC;
    