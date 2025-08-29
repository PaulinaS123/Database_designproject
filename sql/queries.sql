-- ===========================
-- Volunteer Project Management Queries
-- ===========================

USE volunteer_db;

-- ===========================
-- QUERIES
-- ===========================

-- Query 1: Volunteers and their assigned tasks
SELECT v.name AS volunteer_name, t.title AS task_title
FROM Volunteer v
JOIN Task t ON v.volunteer_id = t.assigned_to;

-- Query 2: Projects with client information
SELECT p.name AS project_name, c.name AS client_name
FROM Project p
JOIN Client c ON p.client_id = c.client_id;

-- Query 3: Total hours worked per volunteer
SELECT v.name AS volunteer_name, SUM(tl.hours_worked) AS total_hours
FROM Volunteer v
JOIN Time_Log tl ON v.volunteer_id = tl.volunteer_id
GROUP BY v.name
ORDER BY total_hours DESC;

-- Query 4: Tasks and their assigned volunteer
SELECT t.title AS task_title, v.name AS volunteer_name
FROM Task t
JOIN Volunteer v ON t.assigned_to = v.volunteer_id;

-- Query 5: Total hours worked per project, grouped by volunteer
SELECT 
    p.name AS project_name,
    v.name AS volunteer_name,
    SUM(tl.hours_worked) AS total_hours
FROM Project p
JOIN Task t ON p.project_id = t.project_id
JOIN Time_Log tl ON t.task_id = tl.task_id
JOIN Volunteer v ON tl.volunteer_id = v.volunteer_id
GROUP BY p.name, v.name
ORDER BY p.name, total_hours DESC;

-- ===========================
-- VIEWS
-- ===========================

-- View 1: Project and Client Details
CREATE VIEW Project_Client_Details AS
SELECT p.project_id, p.name AS project_name, p.status, 
       c.name AS client_name, c.contact_info
FROM Project p
JOIN Client c ON p.client_id = c.client_id;

-- View 2: Volunteer Time Summary
CREATE VIEW Volunteer_Time_Summary AS
SELECT v.name AS volunteer_name, 
       SUM(tl.hours_worked) AS total_hours_logged
FROM Volunteer v
JOIN Time_Log tl ON v.volunteer_id = tl.volunteer_id
GROUP BY v.name;

-- View 3: Overdue Tasks
CREATE VIEW Overdue_Tasks AS
SELECT t.title AS task_title,
       t.due_date,
       t.status,
       v.name AS assigned_volunteer,
       p.name AS project_name
FROM Task t
JOIN Volunteer v ON t.assigned_to = v.volunteer_id
JOIN Project p ON t.project_id = p.project_id
WHERE t.due_date < CURDATE() AND t.status != 'Completed';
