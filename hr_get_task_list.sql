CREATE OR REPLACE FUNCTION HR_GET_TASK_LIST(a_emp_id IN VARCHAR2)
RETURN sys_refcursor
IS 
tsk_list Sys_Refcursor;
BEGIN
  OPEN tsk_list FOR SELECT TASK_ID, TASK_NAME FROM HR_TASK WHERE TASK_ID =(SELECT TASK_ID FROM HR_TASK_ASSIGNMENT WHERE EMP_id = a_emp_id);
  
  RETURN tsk_list;
  
END HR_GET_TASK_LIST;
  
