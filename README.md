# AstroShow Tickets API

Welcome to the Planetarium Management API, a comprehensive service designed to facilitate the management of planetarium-related data and operations.
## Description
The Planetarium Management API is a robust solution for handling planetarium data and operations effectively. Whether you're developing an astronomy education platform, a celestial event management system, or any space exploration project, our API simplifies the process. It offers powerful features to manage planetarium shows, sessions, user reservations, and more.

## Features

**Authentication and Authorization**:

* Unauthorized users do not have access to the API. Users need to be authenticated before they can access its features.
* Authorized users (authenticated users) can create reservations with tickets.
* Authorized users can read information about show sessions, planetarium domes, and show themes.
* Admin users have additional privileges to manage information.

**Reservations**:

* Authorized users are able to create reservations, including tickets and show sessions.

**Read-Only Access**:

* All users, including both authorized and administrative users, are restricted from deleting information via the API.

**Administrative Privileges**:

* Administrative users possess the authority to manage information within the system, including creating and updating records associated with show sessions, planetarium domes, and show themes.

**Filtering**:
* Users can filter astronomy shows by title and show sessions by date and astronomy show ID.

**Swagger Documentation**


## Installation using GitHub

1. Install PostgresSQL and create a database.

For both Windows and macOS:

```shell
git clone https://github.com/grungezz/astro-show-tickets-api
cd astro-show-tickets-api
python -m venv venv
source venv/Scripts/activate (on Windows)
source venv/bin/activate (on macOS)
pip install -r requirements.txt
```

2. Set environment variables for the database connection:
```shell
export DB_HOST=<your_db_hostname>
export DB_NAME=<your_db_name>
export DB_USER=<your_db_username>
export DB_PASSWORD=<your_db_password>
```

3. Run the necessary management commands:
```shell
python manage.py migrate
python manage.py loaddata planetarium_db_data.json
python manage.py runserver
```

4. Run with Docker

* Ensure that Docker is installed before proceeding.

```shell
docker-compose build
docker-compose up
```

5. Accessing the API with JWT
* Create a user via the api/user/register endpoint.
* Obtain an access token through the api/user/token endpoint.

6. API Endpoints:
* Swagger documentation: /api/doc/swagger
* DRF Documentation: /api/schema/
