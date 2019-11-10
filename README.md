# IcelandicTutor
 
## PosrgreSQL

Check if postgres is running:

<pre><code>
brew services restart postgresql
</code></pre>

Go to postgres:

<pre><code>
psql postgres
</code></pre>


You are signed in to postgres if this appears at the begining of the terminal line:


<pre><code>
postgres=#
</code></pre>


To create the 'andrea' user do:


<pre><code>
CREATE ROLE andrea WITH LOGIN PASSWORD '12345';
ALTER ROLE andrea CREATEDB;
</code></pre>

To check if andrea is a user then you can do the following command:

<pre><code>
\du
</code></pre>



## Java8

If the program is not running it could be because you don't have Java 8

To set up Java 8 on mac you can go to terminal and do the following commands


<pre><code>
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8
</code></pre>

In IntelliJ you can do the following to change when deciding which Java you are using:

**File -> Project Structure -> Project Settings -> Project**

There you can see which java version you are using and you can change it by pushing "Edit" and you will be redirected to SDKs where you can choose **JDK home path**. Based on the Java commands before the path the path should be:

<pre><code>
/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
</code></pre>




