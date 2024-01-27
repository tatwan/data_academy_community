# Learning SQL

## SQL IDE/GUI 

**Installing a GUI (Graphical User Interface) or IDE (Integrated Development Environment)**

When you install a SQL database such as MySQL, PostgreSQL, SQLite, or others the most common way to interact with these database is through the terminal (or command line). Alternatively, for a more user friendly experience it is common to see SQL developers utilize an IDE (GUI based).  Here is a list of popular IDEs that you **can install and use for free**:

* **DBeaver** (recommended)
  * **Download**: To download the free community edition you can visit this link https://dbeaver.io/download/
  * Easy to use and supports many different databases whether cloud based or on-premise 
  * Easy to learn
  * Supports different OS including MacOS, Windows, and Linux 

![image-20240127162036143](images/image-20240127162036143.png)

* **pgAdmin**
  * **Download**: https://www.pgadmin.org
  * Supports different OS including MacOS, Windows, as well as a Docker container for cross-platform 
  * Primarily designed to an interface for **PostgreSQL** unlike DBeaver which supports multiple databases 
* **MySQL Workbench**
  * **Download**: https://www.mysql.com/products/workbench/
  * Supports different OS including MacOS, Windows, and Linux 
  * Supports multiple databases unlike pgAdmin. DBeaver offers a more modern and intuitive design overall 

---

# Installing a SQL Database

## Option A: Install a local database like PostgreSQL 

* To install PostgreSQL locally on your machine you can just go to PostgreSQL download page [here](https://www.postgresql.org/download/) and select the appropriate OS: Linux, MacOS, Windows ..etc
* For Window OS you can opt to use the Interactive Installer 

![image-20240127163532050](images/image-20240127163532050.png)

* This should take you to the download page from EDB. Select the latest version

![image-20240127163610580](images/image-20240127163610580.png)

* The Download should start 

![image-20240127163656936](images/image-20240127163656936.png)

* Once the file is downloaded just double click and follow the installation instructions 

![image-20240127164720868](images/image-20240127164720868.png)

![image-20240127164732592](images/image-20240127164732592.png)

Notice the installation come bundled with **pgAdmin** for the interface (IDE) which if you decided to use you can keep it checked otherwise if you want to use another tool like **DBeaver** you can uncheck it. Then click Next

![image-20240127164844409](images/image-20240127164844409.png)

Click Next.

Enter a password for the superuser (admin) named `postgres`. Make sure you document and remember the password

![image-20240127164924965](images/image-20240127164924965.png)

Keep the default port `5432`

![image-20240127164953212](images/image-20240127164953212.png)

Click next

![image-20240127165011351](images/image-20240127165011351.png)

Here keep the detail option for `locale` and click next 

![image-20240127165050996](images/image-20240127165050996.png)

In the installation summary just double check the options then click next to being the installation 

![image-20240127180529822](images/image-20240127180529822.png)

---

### Launching pgAdmin with PostgreSQL installation

* Once installation is complete you can launch pdAdmin

![image-20240127181407657](images/image-20240127181407657.png)

![image-20240127181428223](images/image-20240127181428223.png)

* 

## Option B: Install using Docker

* First, install Docker from ([Docker: Accelerated Container Application Development](https://www.docker.com/))
* Click the Download for Windows (or your other OS)

![image-20240127165850053](images/image-20240127165850053.png)

* Follow the instructions to install Docker
* Once Docker is installed you will have access to Docker Desktop also called Docker Dashboard 

![image-20240127165934015](images/image-20240127165934015.png)

* In the search bar on top type `postgresql`

![image-20240127170014173](images/image-20240127170014173.png)

* Select the first option which shows the official PostgreSQL docker image and click `pull`
* This will download the Docker image locally on your machine 

![image-20240127170118824](images/image-20240127170118824.png)

* Once completed, you can click on the `Images` option from the left panel

![image-20240127170158678](images/image-20240127170158678.png)

* There you will see all the images you have downloaded (pulled)
* Click on the run button

![image-20240127170259384](images/image-20240127170259384.png)

* This should pop a new window, then click on the **optional settings**

![image-20240127170329392](images/image-20240127170329392.png)

* In the optional settings you can fill out the additional information needed 

![image-20240127170401235](images/image-20240127170401235.png)

![image-20240127170621097](images/image-20240127170621097.png)

* Finally click run
* Your PostgreSQL database is now running as a container

![image-20240127170714854](images/image-20240127170714854.png)

* You can now connect your favorite IDE to the PostgreSQL. In the following example I am connecting my DBeaver as shown

![image-20240127170756935](images/image-20240127170756935.png)

![image-20240127170816163](images/image-20240127170816163.png)

You are now connected and ready to use your database

![image-20240127170849658](images/image-20240127170849658.png)

---

## Option C: Using Snowflake 

**What is Snowflake**

Snowflake is a cloud-based data warehousing platform that provides a single platform for data warehousing, data lakes, and data engineering. It is a fully managed service that can store and analyze all data records in one place, automatically scaling up or down its compute resources to load, integrate, and analyze data

**How to install**

Using Snowflake is the simplest setup since it is a cloud based solution (SaaS) and no installation is required. Just head to the Snowflake page https://www.snowflake.com/ and click START FOR FREE option

![image-20240127171052379](images/image-20240127171052379.png)

Enter your information and you will get a full access with 30-day trial and no credit card or payment is required. 

Snowflake already comes with its own GUI/IDE so no additional software is needed.



----

## Option D: Using SQLite

Another easy option to get started working with a SQL database is with SQLite. 

> SQLite is a software library that provides a relational database management system. It is an in-process library that implements a self-contained, serverless, zero-configuration, transactional SQL database engine. Unlike most other SQL databases, SQLite does not have a separate server process and reads and writes directly to ordinary **disk files**. It is widely used in various applications and is popular for its lightweight setup, minimal resource requirements, and cross-platform compatibility.

The easiest way to get started is via **DBeaver**

* Launch DBeaver and click on new connections

![image-20240127180944489](images/image-20240127180944489.png)

Select SQLite 

![image-20240127181004818](images/image-20240127181004818.png)

* Click Next

![image-20240127181026764](images/image-20240127181026764.png)

* Click on Create

![image-20240127181057990](images/image-20240127181057990.png)

* Give your database a name in the Save As option and chose where you want to the SQLite file (DB) saved

![image-20240127181119392](images/image-20240127181119392.png)

* Click Save

![image-20240127181146246](images/image-20240127181146246.png)

* Click Finish

And that’s it you know have a DB ready to use

![image-20240127181214167](images/image-20240127181214167.png)

----

