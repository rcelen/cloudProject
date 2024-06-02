CREATE DATABASE if NOT EXISTS cloud_project;

USE cloud_project;

CREATE TABLE logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    visit_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_address VARCHAR(45)
);

-- Create a user 'rcelen' with necessary privileges
-- CREATE USER IF NOT EXISTS 'rcelen'@'%' IDENTIFIED BY 'root';
-- Grant permissions to the user
GRANT SELECT, INSERT, UPDATE, DELETE ON cloud_project.* TO 'root'@'%';

-- Flush privileges to apply changes
FLUSH PRIVILEGES;


