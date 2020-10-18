-- Deliverable 1
SELECT ce.emp_no, 
            ce.first_name, 
            ce.last_name,
            ti.title,
            ti.from_date,
            ti.to_date
INTO ret_titles
FROM current_emp as ce
INNER JOIN title as ti
ON (ce.emp_no=ti.emp_no)
INNER JOIN employees as e
ON (ce.emp_no=e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM ret_titles
ORDER BY emp_no, to_date DESC;

-- Employee title count by title
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Deliverable 2
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
                                e.first_name, 
                                e.last_name,
                                e.birth_date,
                                de.from_date,
                                de.to_date,
                                ti.title
INTO mentor
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no=de.emp_no)
INNER JOIN title as ti
ON (e.emp_no=ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND(de.to_date= '9999-01-01')
ORDER BY emp_no ASC
