#!/bin/bash

ENDPOINT=https://192.168.1.50
URL="${ENDPOINT}/aportal/regadm/student.portal/student.portal.jsp?action=apply_reg&st_info=drop"

SESSION=
COURSE=
GROUP=

while [ true ] ; do
curl -s --insecure \
     --cookie "JSESSIONID=${SESSION}" \
     -X POST \
     --data "st_reg_courseid=${COURSE}&st_reg_groupno=${GROUP}&st_course_add=1" \
     $URL | grep frmtrc | cat
sleep 1
done
