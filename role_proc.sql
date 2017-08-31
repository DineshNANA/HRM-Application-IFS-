CREATE OR REPLACE PROCEDURE hr_role_create(
       roleName IN VARCHAR2, roleDescription IN VARCHAR2) AS
BEGIN
  INSERT INTO HR_Role(role_id, role_name, role_description)
  VALUES ('ROL006', roleName, roleDescription);
END hr_role_create;
/


CREATE OR REPLACE PROCEDURE hr_role_delete(roleId IN VARCHAR2) AS
BEGIN
  DELETE FROM HR_Role
  WHERE role_id = roleId;
END hr_role_delete;
/
