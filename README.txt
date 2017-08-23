
SHERIFF DEPARTMENT OF TWIN PEAKS CITY
======================================
Police department project with private CRUD-area


WHAT TECHNOLOGY I WOULD LIKE TO IMPLEMENT IN THIS PROJECT?
----------------------------------------------------------

The aim of this project is to study and mount on practice java web-technologies and next frameworks:

    Back-end:
    Spring Core, Spring Web-MVC, Spring Security, Spring ORM, Maven, LogBack with slf4j, Apache commons (for file upload);
    Database:
    - PostgreSQL, Hibernate (with Validator);
    Front-end:
    - Yahoo PureCSS, CSS, FontAwesome icons.
    - JSP pages with JSTL and Spring Tags library
    - jQuery (DataTables plugin)

Let’s look on site structure in brief:

In this project I created two basic entities which are bound to each other: cars and persons.
Correspondingly, an administrator can:

        - View detailed information about a person\car
        - Added person\car
        - Edit the person\car
        - Delete the person\car
        - Assign specific persons for corresponding car, or leave person without automobile


ESSENTIAL INFORMATION FOR LAUNCH THIS PROJECT
---------------------------------------------

DDL Code of PostgreSQL database for creating security table (JDBC Security Database Schema).
Or you can use InMemory authentication appointed at applicationContext.xml file.
User table:

    CREATE TABLE users
    (
    username VARCHAR(50) PRIMARY KEY NOT NULL,
    password VARCHAR(50) NOT NULL,
    enabled BOOL NOT NULL
    );

Authorities table:

    CREATE TABLE authorities
    (
    username VARCHAR(50) NOT NULL,
    authority VARCHAR(50) NOT NULL,
    FOREIGN KEY (username) REFERENCES users (username)
    );
    CREATE UNIQUE INDEX ix_auth_username ON authorities (username, authority);

Inserting data into corresponding tables:

    INSERT INTO users (username, password, enabled) VALUES (‘admin’, ‘admin’, true);
    INSERT INTO authorities (username, authority) VALUES (‘admin’, ‘ROLE_ADMIN’);

For correct saving pictures, you need specify in InteliJ IDEA Tomcat output directory settings:

    Project Structure –> Artifacts –> Output Directory
    [path to project][project_folder]\src\main\webapp
    For Example:
    C:\Java\work\police-patrol\src\main\webapp

Crated in StackEditor; december 2016; made by obelets.sergey@gmail.com