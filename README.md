# IcelandicTutor


## Regarding running the project

The first thing to do is downloading the source and importing it into an IDE 
(this project was made using IntelliJ). The project uses PostgreSQL so to run
the project one would have to install PostgreSQL, if it is not already installed,
and set up a database connection in the project. The accompanying file,
script_final.sql, is used to create the schema for the database. There are also
several csv files that contain information for the tables. These can be imported
into the database. 
 
## PostgreSQL


Go to postgres:

<pre><code>psql postgres
</code></pre>


You are signed in to postgres if this appears at the begining of the terminal line:


<pre><code>postgres=#
</code></pre>


To create the 'andrea' user do:


<pre><code>CREATE ROLE andrea WITH LOGIN PASSWORD '12345';
ALTER ROLE andrea CREATEDB;
</code></pre>

To check if andrea is a user then you can do the following command:

<pre><code>\du
</code></pre>

## Java8

If the program is not running it could be because you don't have Java 8 or the
settings on the IDE do not match the Java version.

If you are using IntelliJ and the settings need to be changed you can do that by
accessing the following area:

**File -> Project Structure -> Project Settings -> Project**

There you can see which java version you are using and you can change it by pushing
"Edit" and you will be redirected to SDKs where you can choose **JDK home path**.


## IntelliJ

To connect the database in IntelliJ you need to open the database option in the
right-sidebar and add a Data Source -> PostgreSQL fill out the admin (andrea) and
password (12345).

## Admin page

The id for each question is assigned sequentially so if questions are added using the csv files, the sequence id must be updated. If this is not done it will result in an error when adding questions from the admin page, as the question will not have a unique id. In order to fix this, the following command must be entered into the database console in IntelliJ: 
ALTER SEQUENCE question_id_seq RESTART WITH 52
As currently the csv contains ids from 1-51 so 52 would be next in line.
