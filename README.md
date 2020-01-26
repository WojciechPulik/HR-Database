# HR-Database
WebAppHR
This is a simple web application created as an exercise after completing a JavaEE course (JavaStart.pl).
This is a simple human resource management application:
- adding employees (name, surname, salary, id), 
- updating, 
- deleting, 
- searching for an employee by name, 
- displaying the employee list.
User roles are divided into regular user and admin. Admin rights include user rights and the ability to add a new user.
The application uses MySQL relational database (relation between user and role).
Backend is splitted into layers: servlets(controllers), service, DAO (DAO Factory, SqlParameterSource interface).
Authorization is implemented by MD5 Message Digest algorithm.
Frontend technologies: JSP, HTML5, CSS, Lenguage Expression.
