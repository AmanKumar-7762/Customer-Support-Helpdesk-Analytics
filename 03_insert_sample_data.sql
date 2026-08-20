
USE helpdesk_db;

**  Insert Sample CustomersI
  NSERT INTO customers VALUES
(1,'Rahul Sharma','Mumbai','2025-01-05'),
(2,'Priya Verma','Delhi','2025-01-08'),
(3,'Amit Patel','Pune','2025-01-10'),
(4,'Sneha Joshi','Bangalore','2025-01-12'),
(5,'Rohan Gupta','Hyderabad','2025-01-15');

** Insert Sample Support Agents
INSERT INTO support_agents VALUES
(101,'Ankit Mehta','Technical Support','2024-01-10'),
(102,'Neha Singh','Billing Support','2024-03-15'),
(103,'Vikas Sharma','Customer Success','2024-05-20'),
(104,'Pooja Verma','Technical Support','2024-07-01');

** Insert Sample Tickets
INSERT INTO tickets VALUES
(1001,1,101,'Login Issue','High',
 '2025-02-01 10:00:00',
 '2025-02-01 11:30:00',
 'Resolved',4.8),

(1002,2,102,'Billing Query','Medium',
 '2025-02-02 09:15:00',
 '2025-02-02 10:00:00',
 'Resolved',4.5),

(1003,3,101,'Password Reset','Low',
 '2025-02-02 14:30:00',
 '2025-02-02 14:45:00',
 'Resolved',5.0),

(1004,4,103,'Feature Request','Low',
 '2025-02-03 12:00:00',
 NULL,
 'Open',NULL),

(1005,5,104,'Application Crash','Critical',
 '2025-02-03 16:45:00',
 NULL,
 'In Progress',NULL);
