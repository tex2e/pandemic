
mac-postgresql-start:
	pg_ctl -D /usr/local/var/postgres -l /usr/local/var/log/postgres start

mac-postgresql-stop:
	pg_ctl -D /usr/local/pgsql/data stop

postgresql-list:
	psql -l

postgresql-create-db:
	psql postgres -c "create database pandemic_dev"


ubuntu-postgresql-start:
	/etc/init.d/postgresql start

ubuntu-postgresql-stop:
	/etc/init.d/postgresql stop

ubuntu-exenv:
	@echo "# type following commands"
	@echo
	@echo 'export PATH="$$HOME/.exenv/bin:$$PATH"'
	@echo 'eval "$$(exenv init -)"'
	@echo
