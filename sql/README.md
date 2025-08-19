CREATE DATABASE volunteer_db;
USE volunteer_db;

USE volunteer_db;

SHOW TABLES;

SELECT * FROM Volunteer LIMIT 5;
SELECT * FROM Project LIMIT 5;

-- SQL schema for Volunteer Project Management

DROP TABLE IF EXISTS Time_Log;
DROP TABLE IF EXISTS Task;
DROP TABLE IF EXISTS Project;
DROP TABLE IF EXISTS Volunteer;
DROP TABLE IF EXISTS Client;

CREATE TABLE Client (
  client_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  type VARCHAR(50),
  contact_info VARCHAR(255),
  organization_description TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Volunteer (
  volunteer_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  role VARCHAR(100),
  skills VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Project (
  project_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  client_id INT,
  description TEXT,
  start_date DATE,
  end_date DATE,
  status VARCHAR(50),
  FOREIGN KEY (client_id) REFERENCES Client(client_id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Task (
  task_id INT PRIMARY KEY,
  project_id INT,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  assigned_to INT,
  due_date DATE,
  status VARCHAR(50),
  FOREIGN KEY (project_id) REFERENCES Project(project_id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (assigned_to) REFERENCES Volunteer(volunteer_id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Time_Log (
  time_log_id INT PRIMARY KEY,
  volunteer_id INT,
  task_id INT,
  date DATE,
  hours_worked DECIMAL(4,2),
  FOREIGN KEY (volunteer_id) REFERENCES Volunteer(volunteer_id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (task_id) REFERENCES Task(task_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Inserting data into Client

INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (1, 'Bell, Pitts and Young', 'Small Business', '656-761-3305x47522', 'Have their responsibility catch color staff.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (2, 'Santana Inc', 'Nonprofit', '(774)496-0298', 'Future particular education.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (3, 'Mcdaniel-Conner', 'Startup', '042-464-0815x8801', 'Act green approach set.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (4, 'Hernandez, Williams and Gillespie', 'Nonprofit', '898.890.7184', 'Down indeed industry Democrat but long federal.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (5, 'Bullock-Stewart', 'Startup', '+1-423-931-1419x48534', 'None message drug raise another.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (6, 'Ford, Hendrix and Wright', 'Small Business', '029-558-5972', 'Its assume allow return.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (7, 'Becker-Weber', 'Startup', '439.414.6468x9727', 'What however dog.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (8, 'Valdez, Simpson and Roberts', 'Startup', '001-075-840-6655', 'Go enough just language value.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (9, 'Long-Nelson', 'Small Business', '934-464-2964', 'Hard save common treatment few military gas.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (10, 'Donaldson-Hoover', 'Small Business', '383.648.8005x282', 'Team west stock loss number matter.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (11, 'Miller, Erickson and Stark', 'Nonprofit', '+1-332-421-3453', 'Deal remember minute lead present rule create.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (12, 'Myers and Sons', 'Small Business', '001-847-247-4492x332', 'Debate receive alone rise recently season degree.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (13, 'Rhodes Group', 'Nonprofit', '056-953-5985x8626', 'Military whole sort leg.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (14, 'Hudson-Kirk', 'Nonprofit', '+1-364-119-1717x38978', 'Allow speech you worker particularly.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (15, 'Ramirez, Travis and Mason', 'Startup', '001-153-581-1872x2031', 'Bed necessary cell three.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (16, 'Jacobs Inc', 'Startup', '001-880-065-8033', 'Term future loss police billion.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (17, 'Kennedy, Smith and Welch', 'Small Business', '001-671-907-9752', 'Drug its appear color.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (18, 'Hill, Pham and May', 'Startup', '132-331-9113x0559', 'World half question interest even country hair.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (19, 'Carlson-Tanner', 'Small Business', '(515)261-4581x492', 'Success piece fly of fund budget alone.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (20, 'Sheppard, Glenn and Perkins', 'Nonprofit', '001-359-541-6132x71539', 'Letter activity stuff size choice way.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (21, 'Burton, Ford and Thompson', 'Nonprofit', '001-042-033-6398x14603', 'Late growth recent sister how.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (22, 'Rowe-Rojas', 'Small Business', '6479130078', 'Ok in style throw safe drug. Station arm offer.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (23, 'Flores, Mcgee and Williams', 'Nonprofit', '242.062.8447', 'Strategy citizen actually including.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (24, 'Banks-Hinton', 'Startup', '001-210-885-6592x8969', 'Dog anything same list.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (25, 'Payne PLC', 'Nonprofit', '(376)919-6512x78659', 'Western whom wrong.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (26, 'Riggs Group', 'Nonprofit', '051-319-7076', 'Trial not budget into necessary buy few option.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (27, 'Mack-Sanchez', 'Nonprofit', '001-933-453-6477x0460', 'Most majority eye place.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (28, 'Nelson LLC', 'Startup', '001-483-430-1967', 'Term whole usually more fill street pick do.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (29, 'Miller Ltd', 'Small Business', '084-743-0622x16418', 'Change show lot over card structure.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (30, 'Hull-Gallagher', 'Small Business', '(585)548-0120', 'Cell care send despite before possible one.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (31, 'Wang, Klein and Park', 'Small Business', '743-771-5895x4358', 'Follow above pretty improve realize or.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (32, 'Mason-Coleman', 'Startup', '001-339-988-8451x0241', 'Your yet bed she.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (33, 'Bennett-Harris', 'Startup', '245.633.6949x98370', 'Recently whatever table respond space.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (34, 'Johnson, Collins and Knight', 'Small Business', '808-998-2533x0275', 'Happen black none large song.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (35, 'Phelps, Griffin and Brown', 'Small Business', '(600)305-6765x069', 'Collection wish great foot federal thank.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (36, 'Richards Ltd', 'Small Business', '919-552-8865', 'Tough far until.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (37, 'Scott-Reeves', 'Startup', '4151294266', 'Share travel together right them close.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (38, 'Jones, Trujillo and Collins', 'Small Business', '6237126926', 'Sister watch account lot follow candidate.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (39, 'Johnson-Arnold', 'Small Business', '+1-524-800-1627', 'Our finally represent enough road side impact.');
INSERT INTO Client (`client_id`, `name`, `type`, `contact_info`, `organization_description`) VALUES (40, 'Porter-Perez', 'Small Business', '(078)002-4397x90981', 'Matter sit scene college use truth.');

-- Inserting data into Volunteer

INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (1, 'Mark Hart', 'cody63@hotmail.com', 'UX Designer', 'level, enough');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (2, 'Jeffrey Medina', 'amanda82@flowers.com', 'Developer', 'yeah, food, finish');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (3, 'Patricia Glenn', 'markross@hotmail.com', 'Developer', 'thing, college');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (4, 'Catherine Brown', 'mark84@elliott-koch.com', 'Data Analyst', 'any, also, wind');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (5, 'Darren Franco', 'alanjackson@scott-shields.biz', 'Developer', 'model, ask');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (6, 'Nicholas Porter', 'sylviapayne@gonzalez.com', 'Project Manager', 'anyone, general, must');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (7, 'Thomas Bell', 'robert22@gmail.com', 'Developer', 'always, hotel, pressure, blue');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (8, 'Teresa Anderson', 'blawrence@gmail.com', 'Developer', 'worker, clearly, myself, five');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (9, 'Sabrina Taylor', 'nguyenrichard@hotmail.com', 'Developer', 'hit, life, fall, last');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (10, 'Michael Rollins', 'rhondaharper@hotmail.com', 'Developer', 'across, serious, life, include');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (11, 'John Berger', 'angela88@gmail.com', 'UX Designer', 'system, plant, produce');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (12, 'Christina Gibson', 'rickpotter@yahoo.com', 'UX Designer', 'society, order, concern');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (13, 'Karen Lewis', 'theresadavis@yahoo.com', 'Project Manager', 'much, conference, thousand, large');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (14, 'James West', 'barryatkinson@yahoo.com', 'Data Analyst', 'mother, establish, challenge');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (15, 'Sean Anderson', 'hornpaul@martinez-collins.com', 'Project Manager', 'mind, less');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (16, 'Amanda Christian', 'julie39@moore.biz', 'UX Designer', 'adult, sense, interesting, particular');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (17, 'Nicholas Mcintosh', 'dustinjacobs@pennington.net', 'Developer', 'hair, box, table');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (18, 'Maria Wyatt', 'nicholas05@cisneros.biz', 'Project Manager', 'himself, ever');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (19, 'Theresa Flores', 'melanie77@yahoo.com', 'Data Analyst', 'coach, continue');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (20, 'Whitney Hunter', 'zandrews@jackson-doyle.com', 'UX Designer', 'mention, maintain, white, model');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (21, 'Donald Diaz', 'mcdanieldeborah@cortez.info', 'Developer', 'new, seven, body');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (22, 'Ana Ali', 'carla31@smith.com', 'Project Manager', 'politics, door, keep');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (23, 'Ronnie Robinson', 'nichole52@walker.org', 'Data Analyst', 'item, soldier, consumer, worker');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (24, 'Bradley Parker', 'pwilliams@aguilar-kane.org', 'Data Analyst', 'anything, want, part');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (25, 'Devon Stevenson', 'phill@yahoo.com', 'Project Manager', 'here, language');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (26, 'Daniel Estrada', 'floresnicholas@lawson.com', 'UX Designer', 'challenge, pass');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (27, 'Joseph Wright', 'qmendoza@davis.com', 'Data Analyst', 'moment, account, never');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (28, 'Robin Gregory', 'fwatson@yahoo.com', 'Data Analyst', 'stay, success, ask, particularly');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (29, 'Ethan Foley', 'nicholas51@rosales-thomas.org', 'Developer', 'everything, trouble');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (30, 'Micheal King', 'chadholmes@jacobs.com', 'Developer', 'yes, somebody');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (31, 'Jamie Brown', 'travismartin@hotmail.com', 'Project Manager', 'than, could, food');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (32, 'Anna Moreno', 'hsnyder@hotmail.com', 'Developer', 'natural, leader, account, by');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (33, 'Richard Tucker', 'craig46@gmail.com', 'Project Manager', 'worry, beat, again');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (34, 'Elaine Warner', 'tracieparrish@hotmail.com', 'Developer', 'attention, already, because');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (35, 'Eric Davis III', 'rhunter@bowers.com', 'Developer', 'company, cost, a, statement');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (36, 'Nicole Howard', 'laura95@greene.biz', 'Project Manager', 'something, Mrs');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (37, 'Joanna Campos', 'brittneysmith@gmail.com', 'Data Analyst', 'citizen, work');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (38, 'Jose Hicks', 'michaelbrown@barnett-rasmussen.com', 'Developer', 'yeah, property');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (39, 'Carolyn Henderson', 'robin90@brown.com', 'UX Designer', 'enough, whether, cup');
INSERT INTO Volunteer (`volunteer_id`, `name`, `email`, `role`, `skills`) VALUES (40, 'Jennifer Warner', 'sergiomills@yahoo.com', 'Data Analyst', 'structure, remain, model');

-- Inserting data into Project

INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (1, 'Project Probably', 19, 'Daughter simply any fund next player.', '2025-03-10', '2025-03-30', 'Completed');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (2, 'Project Base', 31, 'Across rich apply firm. Under bill agree list.', '2025-03-25', '2025-03-22', 'Completed');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (3, 'Project Spring', 6, 'In ground teach call.', '2025-04-29', '2025-01-24', 'In Progress');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (4, 'Project Throughout', 5, 'Magazine experience past sing try address.', '2025-06-04', '2025-05-22', 'Completed');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (5, 'Project Article', 4, 'Bad computer pretty. Child interesting use.', '2025-07-13', '2025-01-23', 'In Progress');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (6, 'Project Someone', 4, 'Possible draw good while already side science.', '2025-06-26', '2025-07-20', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (7, 'Project Give', 27, 'Lead central three mention mean theory well.', '2025-04-17', '2025-06-04', 'Completed');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (8, 'Project Television', 23, 'Inside adult body TV from various he wear.', '2025-07-15', '2025-06-05', 'In Progress');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (9, 'Project Attention', 15, 'Model instead leg upon open use look defense.', '2025-05-06', '2025-03-29', 'Completed');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (10, 'Project About', 40, 'Spring she truth next budget professional.', '2025-02-18', '2025-01-20', 'Completed');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (11, 'Project While', 14, 'Congress pattern risk argue ball.', '2025-03-28', '2025-05-24', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (12, 'Project All', 23, 'Require glass make once say authority however.', '2025-01-05', '2025-08-04', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (13, 'Project Eight', 9, 'Ball appear exactly five.', '2025-01-24', '2025-07-10', 'In Progress');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (14, 'Project Ready', 7, 'Look brother from alone truth actually detail.', '2025-06-16', '2025-07-28', 'Completed');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (15, 'Project About', 24, 'Take for over miss option rest.', '2025-05-26', '2025-06-12', 'Completed');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (16, 'Project Interest', 1, 'Push they air on view stop hit.', '2025-08-04', '2025-01-11', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (17, 'Project Natural', 20, 'Check difficult clearly off.', '2025-07-03', '2025-07-15', 'In Progress');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (18, 'Project War', 4, 'Page social compare world create want.', '2025-05-12', '2025-04-09', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (19, 'Project Color', 34, 'Member around boy six carry appear west.', '2025-05-20', '2025-02-06', 'Completed');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (20, 'Project Director', 25, 'Fact allow sure them field.', '2025-05-08', '2025-02-20', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (21, 'Project Job', 26, 'Environmental structure during.', '2025-06-28', '2025-02-05', 'In Progress');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (22, 'Project Personal', 10, 'Poor season movie house firm.', '2025-03-15', '2025-06-08', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (23, 'Project Election', 20, 'Cup democratic money nearly traditional time.', '2025-04-16', '2025-03-21', 'Completed');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (24, 'Project Measure', 40, 'Ground environmental sign area hair.', '2025-07-09', '2025-07-11', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (25, 'Project Positive', 10, 'His toward star sound serve.', '2025-07-04', '2025-02-17', 'In Progress');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (26, 'Project Buy', 16, 'Behind task price.', '2025-04-15', '2025-06-24', 'In Progress');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (27, 'Project Four', 4, 'Check record full relate.', '2025-08-01', '2025-01-12', 'In Progress');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (28, 'Project Who', 37, 'Particularly least somebody both paper election.', '2025-04-07', '2025-06-10', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (29, 'Project Their', 8, 'His necessary first eight edge ask.', '2025-08-03', '2025-07-20', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (30, 'Project Vote', 39, 'Write for PM throw you.', '2025-05-15', '2025-03-24', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (31, 'Project Yourself', 8, 'Lot successful idea all available city.', '2025-06-06', '2025-01-20', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (32, 'Project Her', 34, 'Tough size entire assume door stuff benefit.', '2025-04-08', '2025-06-25', 'Completed');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (33, 'Project Situation', 21, 'Tv artist budget onto.', '2025-04-09', '2025-03-31', 'In Progress');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (34, 'Project Time', 37, 'Common hair cost him. Because follow story what.', '2025-03-13', '2025-05-20', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (35, 'Project Do', 26, 'Hotel public away produce.', '2025-01-09', '2025-06-06', 'In Progress');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (36, 'Project Local', 10, 'Blood send important until with dream clearly.', '2025-07-15', '2025-07-16', 'Completed');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (37, 'Project Hold', 25, 'Huge require require.', '2025-06-20', '2025-02-01', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (38, 'Project Glass', 1, 'Move Mrs left actually.', '2025-07-07', '2025-06-01', 'Completed');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (39, 'Project Build', 23, 'Look visit make bit move ten list.', '2025-06-21', '2025-04-22', 'Planned');
INSERT INTO Project (`project_id`, `name`, `client_id`, `description`, `start_date`, `end_date`, `status`) VALUES (40, 'Project Before', 5, 'Fine analysis civil big explain sense.', '2025-08-01', '2025-03-07', 'In Progress');

-- Inserting data into Task

INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (1, 20, 'Task Interview', 'Out floor turn treat Mr us.', 13, '2025-02-22', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (2, 11, 'Task Enjoy', 'Tree finish born memory. Law carry seek girl.', 21, '2025-07-18', 'In Progress');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (3, 17, 'Task Investment', 'What thus dinner thus.', 18, '2025-01-03', 'In Progress');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (4, 13, 'Task Learn', 'Affect particularly sign head.', 14, '2025-01-09', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (5, 26, 'Task Star', 'Activity rate court at exactly energy deal.', 21, '2025-04-08', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (6, 29, 'Task Similar', 'Final ever arm smile law charge lawyer.', 9, '2025-02-26', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (7, 27, 'Task Walk', 'Mention special space born enter.', 18, '2025-06-22', 'In Progress');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (8, 23, 'Task Write', 'Reveal heavy claim summer body ahead follow.', 7, '2025-05-28', 'Not Started');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (9, 27, 'Task Indicate', 'Mother exactly year year read.', 22, '2025-04-10', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (10, 24, 'Task Tree', 'Eye enough say lay wonder threat.', 1, '2025-03-26', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (11, 20, 'Task Few', 'Pressure job likely look pull experience.', 38, '2025-05-16', 'Not Started');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (12, 30, 'Task Meeting', 'Seat stand idea news dark four year.', 3, '2025-07-05', 'In Progress');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (13, 15, 'Task Although', 'He every almost street specific account.', 25, '2025-04-10', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (14, 9, 'Task Age', 'People shoulder inside send just life activity.', 31, '2025-07-18', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (15, 3, 'Task Cold', 'Old would allow sea.', 8, '2025-07-11', 'Not Started');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (16, 17, 'Task Page', 'Cover future station man affect.', 35, '2025-07-16', 'In Progress');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (17, 13, 'Task Language', 'World herself hit policy movie old me.', 11, '2025-06-10', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (18, 35, 'Task Cup', 'Memory huge medical certainly force.', 19, '2025-06-16', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (19, 39, 'Task Protect', 'Section heavy economy stage research within.', 32, '2025-06-11', 'In Progress');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (20, 19, 'Task Space', 'Long just tend plan.', 9, '2025-07-23', 'In Progress');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (21, 33, 'Task Red', 'To day issue brother.', 15, '2025-03-11', 'Not Started');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (22, 8, 'Task Outside', 'Capital common behind close.', 14, '2025-01-28', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (23, 18, 'Task Establish', 'Minute base exactly home reduce.', 29, '2025-02-13', 'In Progress');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (24, 18, 'Task Their', 'No behind strong remain possible their.', 35, '2025-05-29', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (25, 27, 'Task Least', 'Suffer throughout total five.', 13, '2025-03-26', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (26, 21, 'Task Leave', 'Likely if language mouth me prove organization.', 27, '2025-03-18', 'Not Started');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (27, 9, 'Task Fact', 'Outside big tree people the participant.', 17, '2025-03-10', 'In Progress');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (28, 7, 'Task Thing', 'Especially pull scientist language.', 35, '2025-06-18', 'Not Started');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (29, 35, 'Task Great', 'Statement dog available people discussion.', 6, '2025-04-14', 'In Progress');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (30, 14, 'Task Sure', 'Look training camera scene mention table protect.', 19, '2025-02-05', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (31, 8, 'Task Head', 'We more friend door black goal send one.', 13, '2025-01-15', 'Not Started');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (32, 19, 'Task Small', 'Morning career look think though better.', 9, '2025-03-03', 'In Progress');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (33, 40, 'Task Practice', 'Only east amount lose.', 15, '2025-07-23', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (34, 10, 'Task Others', 'Before improve budget technology.', 6, '2025-04-10', 'Not Started');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (35, 12, 'Task Half', 'Tell despite democratic draw.', 3, '2025-01-25', 'Not Started');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (36, 21, 'Task Nearly', 'Their scene else particular right.', 19, '2025-03-12', 'In Progress');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (37, 9, 'Task Ever', 'Minute design letter establish picture current.', 19, '2025-07-23', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (38, 5, 'Task Whether', 'Late too director boy may.', 13, '2025-02-03', 'In Progress');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (39, 28, 'Task Thing', 'Hard imagine break unit yourself protect.', 30, '2025-04-22', 'Completed');
INSERT INTO Task (`task_id`, `project_id`, `title`, `description`, `assigned_to`, `due_date`, `status`) VALUES (40, 8, 'Task Might', 'Much tonight cell security or.', 9, '2025-01-03', 'In Progress');

-- Inserting data into Time_Log

INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (1, 1, 25, '2025-08-02', 6.58);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (2, 4, 31, '2025-01-31', 3.03);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (3, 34, 18, '2025-06-07', 5.9);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (4, 8, 38, '2025-07-31', 5.04);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (5, 25, 6, '2025-03-15', 2.66);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (6, 37, 22, '2025-07-12', 2.77);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (7, 27, 30, '2025-01-10', 1.59);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (8, 40, 30, '2025-03-16', 1.55);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (9, 18, 8, '2025-06-24', 7.47);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (10, 25, 2, '2025-03-23', 2.1);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (11, 6, 5, '2025-05-16', 1.31);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (12, 28, 26, '2025-02-12', 7.07);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (13, 23, 17, '2025-08-02', 1.77);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (14, 20, 11, '2025-02-26', 2.27);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (15, 32, 1, '2025-01-12', 6.97);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (16, 12, 1, '2025-08-10', 4.12);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (17, 37, 3, '2025-04-16', 3.32);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (18, 34, 23, '2025-07-13', 2.63);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (19, 37, 34, '2025-04-14', 3.44);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (20, 32, 31, '2025-04-06', 2.45);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (21, 17, 36, '2025-02-28', 4.31);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (22, 20, 21, '2025-04-19', 3.3);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (23, 14, 2, '2025-05-21', 3.27);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (24, 14, 9, '2025-01-16', 6.79);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (25, 34, 24, '2025-06-25', 4.94);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (26, 25, 5, '2025-01-29', 3.48);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (27, 1, 40, '2025-03-18', 2.8);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (28, 5, 18, '2025-02-04', 2.89);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (29, 22, 10, '2025-08-04', 7.2);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (30, 3, 1, '2025-05-17', 7.11);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (31, 39, 16, '2025-06-14', 6.95);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (32, 18, 24, '2025-07-01', 7.05);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (33, 12, 16, '2025-01-29', 5.49);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (34, 6, 17, '2025-06-09', 4.7);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (35, 29, 7, '2025-03-24', 1.6);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (36, 7, 24, '2025-05-15', 2.22);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (37, 32, 34, '2025-03-28', 2.7);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (38, 2, 18, '2025-06-21', 1.48);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (39, 31, 3, '2025-04-19', 5.56);
INSERT INTO Time_Log (`time_log_id`, `volunteer_id`, `task_id`, `date`, `hours_worked`) VALUES (40, 15, 24, '2025-05-22', 7.69);
