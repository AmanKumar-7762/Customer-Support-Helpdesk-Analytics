
USE helpdesk_db;


**Total Support Tickets
  
SELECT COUNT(*) AS total_tickets
FROM tickets;


** Open Tickets
  
SELECT COUNT(*) AS open_tickets
FROM tickets
WHERE ticket_status = 'Open';


** Resolved Tickets
  
SELECT COUNT(*) AS resolved_tickets
FROM tickets
WHERE ticket_status = 'Resolved';


** In Progress Tickets

SELECT COUNT(*) AS in_progress_tickets
FROM tickets
WHERE ticket_status = 'In Progress';


 ** Tickets by Priority
SELECT
    priority,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY priority
ORDER BY total_tickets DESC;


** Tickets by Issue Category

SELECT
    issue_category,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY issue_category
ORDER BY total_tickets DESC;

** Tickets by City

SELECT
    c.city,
    COUNT(t.ticket_id) AS total_tickets
FROM customers c
LEFT JOIN tickets t
    ON c.customer_id = t.customer_id
GROUP BY c.city
ORDER BY total_tickets DESC;


** Average Customer Satisfaction Score

SELECT
    ROUND(AVG(satisfaction_rating), 2) AS average_csat
FROM tickets
WHERE satisfaction_rating IS NOT NULL;


** Resolved Tickets per Agent

SELECT
    sa.agent_id,
    sa.agent_name,
    sa.team_name,
    COUNT(t.ticket_id) AS resolved_tickets
FROM support_agents sa
LEFT JOIN tickets t
    ON sa.agent_id = t.agent_id
    AND t.ticket_status = 'Resolved'
GROUP BY
    sa.agent_id,
    sa.agent_name,
    sa.team_name
ORDER BY resolved_tickets DESC;


** Average Resolution Time

SELECT
    ROUND(
        AVG(
            TIMESTAMPDIFF(
                MINUTE,
                created_at,
                resolved_at
            )
        ),
        2
    ) AS avg_resolution_time_minutes
FROM tickets
WHERE resolved_at IS NOT NULL;
