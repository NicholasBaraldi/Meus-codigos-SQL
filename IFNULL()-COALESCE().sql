SELECT 
    dept_no,
    IFNULL(dept_name,
            'Department name not provided') as dept_name
FROM
    departments_dup;
    
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    departments_dup
ORDER BY dept_no;