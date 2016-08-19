#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	
	CREATE ROLE docker LOGIN PASSWORD 'docker' NOINHERIT VALID UNTIL 'infinity';
	CREATE DATABASE docker WITH ENCODING='UTF8' OWNER=docker;
EOSQL
