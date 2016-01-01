#!/bin/bash

set -e

# Rewrite the default config file to a new location.
sed -i \
  -e "/^baseURL/c\baseURL = \"\"" \
  -e "/^server/c\server = \"${MYSQL_PORT_3306_TCP_ADDR}:${MYSQL_PORT_3306_TCP_PORT}\"" \
  -e "/^database/c\database = \"${MYSQL_ENV_MYSQL_DATABASE}\"" \
  -e "/^;\?username/c\username = \"${MYSQL_ENV_MYSQL_USER}\"" \
  -e "/^;\?password/c\password = \"${MYSQL_ENV_MYSQL_PASSWORD}\"" \
  phprestsql.ini

exec "${@}"
