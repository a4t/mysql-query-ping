#!/bin/sh

DATE_FORMAT='+%Y-%m-%d %H:%M:%S'

while :
do
  echo $(date "${DATE_FORMAT}")
  echo '- - - - - - - - - - - - - - - - - - - - - -'
  time mysql -h ${MYSQL_HOST} -u ${MYSQL_USER} -p${MYSQL_PASSWORD} -P ${MYSQL_PORT} ${MYSQL_DATABASE_NAME} -e "${MYSQL_QUERY}"
  echo '*******************************************'
  sleep ${SLEEP_INTERVAL}
done
