# Local Docker Containers For Developers

```sh
docker-compose -f docker-compose.yml -p "local" up -d
```

## Includes

1. [x] postgres_17.5 - 5432
2. [x] redis_8.0.3 - 6379
3. [x] pgadmin latest version - 5050
4. [x] mysql:8.4.5 - 3306
5. [x] mongo:8.0.11 - 27017

## Docker Commands

1. Create postgres db

```sh
docker exec -it postgres_local \
  psql -U postgres -d postgres \
  -c "CREATE DATABASE local OWNER postgres;"

docker exec -it postgres_local \
  psql -U postgres -d postgres \
  -c "CREATE DATABASE snm_cms OWNER postgres;"
```

## Notes

### Postgres

```sh
CREATE USER your_new_username WITH ENCRYPTED PASSWORD 'your_password';
# if want super user
ALTER USER your_new_username WITH SUPERUSER;
GRANT ALL PRIVILEGES ON DATABASE your_database_name TO your_new_username;
# verify
SELECT * FROM pg_user WHERE usename = 'your_new_username';
REVOKE CONNECT ON DATABASE postgres FROM restricted_user;
REVOKE CONNECT ON DATABASE template1 FROM restricted_user;
REVOKE CONNECT ON DATABASE template0 FROM restricted_user;
GRANT CONNECT ON DATABASE allowed_db TO restricted_user;
```

## References

- [Create User in Postgres](https://www.strongdm.com/blog/postgres-create-user)
