#!/bin/bash

if [ $# -eq 0 ];
then
  SCSS_FILE_LIST=( $(find ./test -type f | grep ".scss$") );
else
  SCSS_FILE_LIST=$@;
fi;

for SCSS_FILE in "${SCSS_FILE_LIST[@]}";
do
  CSS_FILE=$( echo ${SCSS_FILE%.*}.css);
  DIFF=$( sass ${SCSS_FILE} | diff ${CSS_FILE} - | wc -l);
  if [ $DIFF -gt 0 ];
  then
    sass ${SCSS_FILE} | diff --side-by-side ${CSS_FILE} -;
    echo;
    echo ">>> TO VALID CHANGES, RUN: sass ${SCSS_FILE} ${CSS_FILE}";
    echo;
  fi;
done;