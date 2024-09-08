# Job Logger

A simple software solution for organizations to log jobs for workers to do

## Idea 1

A todo list for organisations

- workers or the public can amend jobs through a web interface
- jobs are stored in a database
- organizations can view and organize (pun intended) those jobs

## Docker containers:

With docker/docker-compose installed and running, use the command:

    docker-compose -f docker-compose.yml up

- MariaDB database, this is initialized with the name JobList and all sql files (in alphabetical order) in /docker-entrypoint-initdb will be run to initialize the tables.

- Adminer admin panel, can be accessed through port 8080

- Backend API using NodeJS and express, accessed at port 3001. To send a get request on the joblist table, view localhost:3001/job. For each SELECT, INSERT and UPDATE request we may send to the DB, we must send these requests through GET and POST requests to this API.

- Frontend React app, performs GET and POST requests to the backend API. Accessed through port 3000
