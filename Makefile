
UNAME := $(shell uname)

# TODO: ifeq $UNAME, Darwin
#       postgresql-start:
#           macos-command

postgresql-start-mac:
	pg_ctl -D /usr/local/var/postgres -l /usr/local/var/log/postgres start

postgresql-stop-mac:
	pg_ctl -D /usr/local/pgsql/data stop

postgresql-list:
	psql -l

postgresql-create-db:
	psql postgres -c "create database pandemic_dev"

postgresql-login:
	psql -U postgres -d postgres


postgresql-start-ubuntu:
	/etc/init.d/postgresql start

postgresql-stop-ubuntu:
	/etc/init.d/postgresql stop

exenv-ubuntu:
	@echo "# type following commands"
	@echo
	@echo 'export PATH="$$HOME/.exenv/bin:$$PATH"'
	@echo 'eval "$$(exenv init -)"'
	@echo
