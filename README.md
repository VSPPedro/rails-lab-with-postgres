# README

The purpose of this project is to study the features of postgresql.

# Dockercompose

For now the docker-compose.yml only have PostgreSQL and PGAdmin. You can start this dependencies with:

```shell
docker-compose up
```

## PGAdmin

url: http://localhost:80/

email: admin@root.com  
password: SuperSecret

### How to connect to PostgresSQL

Host name/address: postgresdb  
username: index_demo  
password: index_demo

### How to create valid data?

Go to the console with `rails c` and populate the database using factory bot: `FactoryBot.create_list(:user, 500000)`. The number of user is up to you.  


## Features

### Index

For now we call use rails db:rollback, with the objective to remove the indexs. And rails db:migrate to add the indexs. Run the SQLs between this commands and see for yourself the results.


#### Sql to test index_users_on_lower_first_name_varchar_pattern_ops

```sql
SELECT *
FROM users
WHERE lower(first_name) LIKE 'theodore%';
```

#### Sql to test index_users_on_regexp_replace_phone_0_9

```sql
SELECT *
FROM users
WHERE regexp_replace(phone, '[^0-9]+', '') LIKE '5639%';
```
