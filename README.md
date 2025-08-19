
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
