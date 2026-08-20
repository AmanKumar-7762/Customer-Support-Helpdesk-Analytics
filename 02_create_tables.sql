USE helpdesk_db;

** Create Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

** Create Support Agents Table
CREATE TABLE support_agents (
    agent_id INT PRIMARY KEY,
    agent_name VARCHAR(100),
    team_name VARCHAR(50),
    joining_date DATE
);

** Create Tickets Table
CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY,
    customer_id INT,
    agent_id INT,
    issue_category VARCHAR(50),
    priority VARCHAR(20),
    created_at DATETIME,
    resolved_at DATETIME,
    ticket_status VARCHAR(20),
    satisfaction_rating DECIMAL(2,1),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    FOREIGN KEY (agent_id)
        REFERENCES support_agents(agent_id)
);
