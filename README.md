# Electricity Bill System

A desktop electricity billing application built with Java Swing and MySQL. It supports customer signup and login, customer and meter management, bill calculation, bill details, and payment tracking.

## Project location

The IntelliJ IDEA project is located at:

```text
Electricity-Billing-System/Electricity-Billing-System-Java-Project-master
```

## Features

- Customer signup and login
- Admin and customer views
- Add and update customer information
- Create meter information
- Calculate electricity bills
- View bill and deposit details
- Track and pay bills

## Requirements

- Java JDK 8 or newer
- MySQL Server
- IntelliJ IDEA
- MySQL Connector/J
- `rs2xml.jar`

The required JAR files are included in the project directory.

## Database setup

1. Start MySQL Server.
2. Open `database.sql` in MySQL Workbench or run it from a MySQL client.
3. Execute the complete SQL file. It creates the `Bill_system` database and the required tables.

The database connection is configured in:

```text
src/electricity/billing/system/database.java
```

Update the connection settings if your MySQL credentials differ:

```java
DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/Bill_system",
    "root",
    "root"
);
```

The SQL file contains demo customer and login records. For example:

```text
Username: john_user
Password: password123
User type: Customer
```

Demo credentials are for local development and should not be used in production.

## Run in IntelliJ IDEA

1. Open IntelliJ IDEA.
2. Choose **Open** and select `Electiricity Billing System.iml`.
3. Confirm that the project SDK is set to a valid JDK.
4. Confirm that `mysql-connector-j-8.2.0.jar` and `rs2xml.jar` are available as project libraries.
5. Set `src/electricity/billing/system/Splash.java` as the entry point.
6. Run `Splash.main()`.

If the project is opened as a folder, mark `src` as the Sources Root.

## Troubleshooting

- **Database connection fails:** verify that MySQL is running and that the database name, username, and password in `database.java` match your local setup.
- **Unknown database `Bill_system`:** execute `database.sql`.
- **Missing MySQL classes:** add `mysql-connector-j-8.2.0.jar` to the project's libraries.
- **Table or table model errors:** add `rs2xml.jar` to the project's libraries.
- **Images do not load:** ensure `src/icon` remains in the source resources and run the application from the project module.

## Repository structure

```text
Electricity-Billing-System/
└── Electricity-Billing-System-Java-Project-master/
    ├── src/
    │   ├── electricity/billing/system/  # Java application sources
    │   └── icon/                         # Application images
    ├── out/                              # IntelliJ build output
    ├── database.sql                      # Database schema and demo data
    ├── mysql-connector-j-8.2.0.jar
    ├── rs2xml.jar
    └── Electiricity Billing System.iml
```
