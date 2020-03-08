# How to use
step1. docker-compose up -d (creare services in detached mode)
step2. open pgAdmin with 0.0.0.0:8000 in the browser

pgAdmin
email: 1234@admin.com
password: 1234

# Connect to postgres
host is to enter by docker network inspect pgv_default to check postgres_container Ipv4
user: me
password: 1234
db: testDb

# Create tables
<code>docker exec -it postgres_container psql -U postgres /sql/car_schema_create.sql</code>

# Add initial data
<code>docker exec -it postgres_container psql -U postgres /sql/data_insert.sql</code>

#Note
If stop these services, use <code>docker-compose stop</code>

if start these services, use <code>docker-compose start</code>

if delete these services, use <code>docker-compose down</code>

if delete all docker volumes, use <code>docker volume prune</code>
