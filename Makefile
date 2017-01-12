
postgresql-start:
	pg_ctl -D /usr/local/var/postgres -l /usr/local/var/log/postgres start

postgresql-stop:
	pg_ctl -D /usr/local/pgsql/data stop

postgresql-list:
	psql -l

postgresql-create-db:
	psql postgres -c "create database pandemic_dev"
