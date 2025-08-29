
📂 Volunteer Project Management Database

This project is a relational database system designed to help organizations like Digital Aid Seattle manage volunteer-led projects more effectively. It provides a structured way to track clients, volunteers, projects, tasks, and time logs, ensuring better coordination, reporting, and scalability.
These entities track client details, volunteer skills, project descriptions, assigned tasks, and logged hours. Relationships are set with appropriate primary and foreign keys: each client can have multiple projects, each project can have multiple tasks, and each task can have multiple time log entries. Volunteers can be assigned to tasks and record time worked.

📌 Purpose

The database was created to:

Track project progress and client deliverables
Manage volunteer skills, assignments, and availability
Record time logs for reporting and accountability
Ensure data integrity with proper relational design
Provide a foundation for building project management dashboards or applications

🛠️ Technologies Used

MySQL – database design, schema creation, and data population
MySQL Workbench – EER diagram design and visualization
SQL – schema definition and data manipulation

📊 Database Design

The schema consists of five main tables:

Client – stores client details
Volunteer – tracks volunteer information and skills
Project – contains project descriptions linked to clients
Task – manages assigned tasks within projects
Time_Log – records volunteer work hours

Relationships

Each client can have multiple projects
Each project can include multiple tasks
Each task can be linked to multiple time log entries
Volunteers can be assigned to tasks and record time worked

## Example Queries & Sample Results

### Query 1: Volunteers and their assigned tasks
```sql
SELECT v.name AS volunteer_name, t.title AS task_title
FROM Volunteer v
JOIN Task t ON v.volunteer_id = t.assigned_to;

SAMPLE OUTPUT

| volunteer\_name | task\_title |
| --------------- | ----------- |
| Mark Hart       | Task Tree   |
| Catherine Brown | Task Learn  |

### Query 2: Projects with client information
```sql

SELECT p.name AS project_name, c.name AS client_name
FROM Project p
JOIN Client c ON p.client_id = c.client_id;

SAMPLE OUTPUT

| project\_name  | client\_name             |
| -------------- | ------------------------ |
| Project Base   | Wang, Klein and Park     |
| Project Spring | Ford, Hendrix and Wright |

### Query 5: Total hours per project by volunteer
```sql

SELECT p.name AS project_name, v.name AS volunteer_name, SUM(tl.hours_worked) AS total_hours
FROM Project p
JOIN Task t ON p.project_id = t.project_id
JOIN Time_Log tl ON t.task_id = tl.task_id
JOIN Volunteer v ON tl.volunteer_id = v.volunteer_id
GROUP BY p.name, v.name
ORDER BY p.name, total_hours DESC;

SAMPLE OUTPUT

| project\_name | volunteer\_name | total\_hours |
| ------------- | --------------- | ------------ |
| Project Base  | Ana Ali         | 7.20         |
| Project Color | Nicholas M.     | 5.30         |

### View: Overdue_Tasks
```sql

SELECT * FROM Overdue_Tasks;

SAMPLE OUTPUT

| task\_title | due\_date  | status      | assigned\_volunteer | project\_name   |
| ----------- | ---------- | ----------- | ------------------- | --------------- |
| Task Enjoy  | 2025-02-01 | In Progress | Jeffrey Medina      | Project Spring  |
| Task Cold   | 2025-03-03 | Not Started | Teresa Anderson     | Project Article |



