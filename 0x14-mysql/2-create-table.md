# Create Table

## Log in to your MySQL server as a user with sufficient privileges, such as the root user

## Create the tyrell_corp database

```Bash
CREATE DATABASE tyrell_corp;
```

## Switch to the tyrell_corp database

```Bash
USE tyrell_corp;
```

## Create the nexus6 table with appropriate columns and add at least one entry. Here's an example schema with two columns, id and name

```Bash
CREATE TABLE nexus6 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO nexus6 (name) VALUES ('Leon');
```

## Grant SELECT permissions on the nexus6 table to the holberton_user

```Bash
GRANT SELECT ON tyrell_corp.nexus6 TO 'holberton_user'@'localhost';
```

## Finally, Exit the MySQL server
