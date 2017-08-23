## **Sheriff Department** of Twin Peaks city
### Police department project with private crud-area
#### What technology I would like to implement in this project?

The aim of this project is to study and mount on practice java web-technologies and next frameworks:

Back-end:
- Spring Core, Spring Web-MVC, Spring Security, Spring ORM, Maven, LogBack with slf4j, Apache commons (for file upload);

Database:
- PostgreSQL, Hibernate (with Validator);

Front-end:
- Yahoo PureCSS, CSS, FontAwesome icons.
- JSP pages with JSTL and Spring Tags library
- jQuery (with DataTables plugin)

#### Let's look on site structure in brief:

In this project I created two basic entities which are bound to each other: *cars* and *persons*. Correspondingly, an administrator can:

- View detailed information about a person\car
- Added person\car
- Edit the person\car
- Delete the person\car
- Assign specific persons for corresponding car

The users can browsing the site.

---
#### **Essential information for launch this project**
DDL Code for PostgreSQL database for creating security table ([JDBC Security Database Schema][1]). Or you can use InMemory authentication appointed at *applicationContext.xml* file.

*User table:*
``` 
CREATE TABLE users
(
    username VARCHAR(50) PRIMARY KEY NOT NULL,
    password VARCHAR(50) NOT NULL,
    enabled BOOL NOT NULL
);
```

*Authorities table:*
```
CREATE TABLE authorities
(
    username VARCHAR(50) NOT NULL,
    authority VARCHAR(50) NOT NULL,
    FOREIGN KEY (username) REFERENCES users (username)
);
CREATE UNIQUE INDEX ix_auth_username ON authorities (username, authority);
```

*Inserting data into corresponding tables:*
```
INSERT INTO users (username, password, enabled) VALUES ('admin', 'admin', true);
INSERT INTO authorities (username, authority) VALUES ('admin', 'ROLE_ADMIN');
```
For correct saving pictures, you need specify output directory settings. Here is example for in InteliJ IDEA with Tomcat:
```
Project Structure --> Artifacts --> Output Directory
[path to project]\[project_folder]\src\main\webapp
For Example:
C:\Java\work\police-patrol\src\main\webapp
```
---

Crated in [StackEditor][2]; december 2016; made by <obelets.sergey@gmail.com>

[1]: http://docs.spring.io/spring-security/site/docs/3.0.x/reference/appendix-schema.html
[2]: https://stackedit.io/editor 
