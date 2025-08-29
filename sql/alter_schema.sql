-- Enforce unique volunteer emails
ALTER TABLE Volunteer
ADD CONSTRAINT uq_volunteer_email UNIQUE (email);

-- Restrict roles to defined values
ALTER TABLE Volunteer
MODIFY role ENUM('Developer','UX Designer','Data Analyst','Project Manager') NOT NULL;

-- Restrict project status
ALTER TABLE Project
MODIFY status ENUM('Planned','In Progress','Completed','Not Started') NOT NULL;

-- Restrict task status
ALTER TABLE Task
MODIFY status ENUM('Planned','In Progress','Completed','Not Started') NOT NULL;

-- Ensure hours worked is positive
ALTER TABLE Time_Log
ADD CONSTRAINT chk_hours_positive CHECK (hours_worked > 0);

-- Add indexes for joins/performance
CREATE INDEX idx_project_client ON Project(client_id);
CREATE INDEX idx_task_project ON Task(project_id);
CREATE INDEX idx_task_assigned ON Task(assigned_to);
CREATE INDEX idx_time_log_volunteer ON Time_Log(volunteer_id);
CREATE INDEX idx_time_log_task ON Time_Log(task_id);
