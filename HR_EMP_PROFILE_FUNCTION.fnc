CREATE OR REPLACE FUNCTION HR_EMP_PROFILE_FUNCTION(
empid HR_EMPLOYEE.emp_Id%TYPE)
RETURN Sys_Refcursor
IS
result_set SYS_REFCURSOR;
BEGIN
  
OPEN result_set for SELECT * FROM HR_EMP_PROFILE WHERE emp_id = empid; 

Return result_set;
END HR_EMP_PROFILE_FUNCTION;
/