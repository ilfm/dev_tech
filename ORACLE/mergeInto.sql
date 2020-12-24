-- ○ MERGE INTO USING ON
--    - 조건에 맞는 행은 UPDATE, 조건에 맞지 않는 행은 INSERT 할수 있다.
-- 	  - 이미 존재하는 값은 UPDATE, 신규로 입력되는 값은 INSERT


/*
	EX)
	1. 다른 테이블에서 조회시
	MERGE INTO TABLE/VIEW
	USING (
		SELECT 문
	)
	ON (조건)
	WHEN MATCHED THEN
		* UPDATE문
	WHEN NOT MATCHED THEN
		* INSERT문
	
	2. 같은 테이블에서 조회시
	MERGE INTO TABLE/VIEW
	USING DUAL
	ON (조건)
	WHEN MATCHED THEN
		* UPDATE문
	WHEN NOT MATCHED THEN
		* INSERT문

	- USING 에서 조회한 결과를 가지고 ON 조건문을 만들어 
	  그 조건이 맞으면 WHEN MATCHED THEN에 작성한 UPDATE문이 실행되고 
      조건에 맞지 않으면 WHEN NOT MATCHED THEN에 작성된 INSERT문이 실행된다.

	- mybatis에서는insert와 update 를 사용하면 된다.

*/