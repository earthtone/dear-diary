#!/bin/bash

DATE=$(date '+%Y-%m-%d')
TIME=$(date '+%H:%M:%s')
NAME="${DATE}::${TIME}"
TITLE="$@"

if [ -z "${DIARY_PATH}" ]
then
  echo "DIARY_PATH not set"
else
  if [ -z "$TITLE" ]
  then
    TITLE=$NAME
  fi

  touch "${DIARY_PATH}/${NAME}.md"
  echo -e "title: ${TITLE}\ntags:\n---\n\n# ${TITLE}" > "${DIARY_PATH}/${NAME}.md"
fi

