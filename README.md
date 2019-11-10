# IcelandicTutor
 
## PosrgreSQL

Check if postgres is running:

<pre><code> brew services restart postgresql
</code></pre>

Go to postgres:

<pre><code> psql postgres
</code></pre>


You are signed in to postgres if this appears at the begining of the terminal line:


<pre><code> postgres=#
</code></pre>


To create the 'andrea' user do:


<pre><code> CREATE ROLE andrea WITH LOGIN PASSWORD '12345';
ALTER ROLE andrea CREATEDB;
</code></pre>









