
UNAME := $(shell uname)


ifeq ($(UNAME), Darwin)

postgresql-start:
	pg_ctl -D /usr/local/var/postgres -l /usr/local/var/log/postgres start

postgresql-stop:
	pg_ctl -D /usr/local/pgsql/data stop

endif

ifeq ($(UNAME), Linux)

postgresql-start:
	/etc/init.d/postgresql start

postgresql-stop:
	/etc/init.d/postgresql stop

endif


postgresql-list:
	psql -l

postgresql-create-db:
	psql postgres -c "create database pandemic_dev"

postgresql-login:
	psql -U postgres -d postgres


exenv:
	@echo "# type following commands"
	@echo
	@echo 'export PATH="$$HOME/.exenv/bin:$$PATH"'
	@echo 'eval "$$(exenv init -)"'
	@echo
