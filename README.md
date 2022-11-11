# TV Shows

## Description 
This is a Java Spring-based application built using Spring Boot, MySQL, JSP, Bcrpyt, and Bootstrap.

It features a Full-CRUD, where the login and registration has validations, duplicatate email prevention, and Bcrypt deployment for user password security. Also, the dashboard page allows for different users to create a "show" entry, where they can give it a rating and description as well. Only the indidivual user themselves can edit or delete the their entry, while other can only view the entry and who posted it. Check out my (todo) section to see what I want to add eventually.

Overall, it was a great development experience! I learned the complexity of Java, but also it's friendliness when it came to any error message clarity. Due to everything being split up so well, I was able to resolve errors fairly quickly despite so many files and folders involved in one application. This project definetly sharpened my skillsets in terms of problem solving, fixing bugs, and project management. 

## Demo
https://youtu.be/4_u89sbNwB8

## Table of Contents
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Todo](#todo)

## Prerequisites
- [Spring Tool Suite](https://spring.io/tools)
- [MySQL](https://downloads.mysql.com/archives/community/)(Mac)
- [MySQL](https://dev.mysql.com/downloads/windows/installer/8.0.html)(Windows)
- [MySQL Workbench](https://dev.mysql.com/downloads/workbench/#downloads)

## Installation 
1. Clone the repo
   ```
   git clone https://github.com/HonarchianMonte/TV-Shows_JAVA_Spring.git
   ```

2. Create a file named "env.properties" in the project root directory
   ```
   touch env.properties
   ```

3. Copy and paste the following code block in the "env.properties" file. (Note: change the fields to match your application.)
   ```
   USER_EMAIL=Your_User_Email
   USER_PASSWORD=Your_User_Password
   DATASOURCE_USERNAME=Your_Datasource_Username
   DATASOURCE_PASSWORD=Your_Datasource_Password
   ```

## Usage
1. Run the application 
   Inside Spring Tool Suite, right click on the project name, and then click on "Run As" -> "Spring Boot App". 

2. Open a browser and navigate to http://localhost:8080.

## Todo
- Allow users to rate other entries to form an average.
- Implement review section by other users on a show.
- Add a like/dislike counter on the dashboard next to each show.
- 
