# Volunteer Project Management Database

This database is designed to help organizations like Digital Aid Seattle manage volunteer-led projects more effectively. The schema includes five main tables: `Client`, `Volunteer`, `Project`, `Task`, and `Time_Log`. These entities track client details, volunteer skills, project descriptions, assigned tasks, and logged hours. Relationships are set with appropriate primary and foreign keys: each client can have multiple projects, each project can have multiple tasks, and each task can have multiple time log entries. Volunteers can be assigned to tasks and record time worked. 

The design was created to meet functional requirements such as tracking project progress, managing task assignments, and producing reports for managers and clients. The EER diagram was generated using MySQL Workbench, and sample data (40 records per table) was inserted to allow for testing and demonstration. This structure ensures scalability, data integrity, and easy reporting for project management.

📂 Volunteer Project Management Database

This project is a relational database system designed to help organizations like Digital Aid Seattle manage volunteer-led projects more effectively. It provides a structured way to track clients, volunteers, projects, tasks, and time logs, ensuring better coordination, reporting, and scalability.

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
