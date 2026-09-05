SELECT * FROM employee

-- Q1 retrieve first_name , salary and 10% bonus of employee

SELECT name , salary , (salary*0.5) AS Bonus FROM employee


-- Q2 Calculate the annual salary , salary increament by 5% , also display the monthly new salary !

SELECT name , salary AS old_salary , (salary+(salary*0.05)) AS new_annual_salary , ((salary+(salary*0.05))/12) AS new_monthly_salary
FROM employee;