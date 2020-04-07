# How to use
step1. <code>docker-compose up -d</code> (creare services in detached mode)<br>
step2. open pgAdmin with 0.0.0.0:8000 in the browser<br>

pgAdmin<br>
email: 1234@admin.com<br>
password: 1234<br>

# Connect to postgres
host is to enter by docker network inspect pgv_default to check postgres_container Ipv4<br>
user: me<br>
password: 1234<br>
db: testDb<br>

# Create tables
<code>docker exec -it postgres_container psql -U postgres /sql/car_schema_create.sql</code>

# Add initial data
<code>docker exec -it postgres_container psql -U postgres /sql/data_insert.sql</code>

#Note
If stop these services, use <code>docker-compose stop</code><br>

if start these services, use <code>docker-compose start</code><br>

if delete these services, use <code>docker-compose down</code><br>

if delete all docker volumes, use <code>docker volume prune</code><br>
