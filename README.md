# IcelandicTutor


## Regarding running the project

The first thing to do is downloading the source and importing it into an IDE 
(this project was made using IntelliJ). The project uses PostgreSQL so to run
the project one would have to install PostgreSQL, if it is not already installed,
and set up a database connection in the project. The accompanying file,
tutor_script.sql, is used to create the schema for the database. There are also
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



