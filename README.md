# DB playground

## Requirements

- docker-compose
- docker
- make

Optional:
- [dbmate](https://github.com/amacneil/dbmate)
- psql

## How to use

### 1. Initialise database

In order to initialise the database via docker/docker-compose:

```sh
docker-compose up --build
```

This will create a docker container with a postgresql image exposed on port 5999.

### 2. Make a migration

Once the database up, you can initialise write a migration, using `dbmate`.

```sh
dbmate new <name of migration>
```

Refer to [dbmate](https://github.com/amacneil/dbmate) documentation.

### 3. Run a migration

The makefile contains some commands for ease.

```sh
make up # will migrate to latest


make down # will do back one migration
```

### 4. Connect to database

Connecting to the database via `psql`.

```sh
make connect
```

