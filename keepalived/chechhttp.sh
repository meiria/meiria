#!/bin/bash
a=`ps -C httpd --no-header | wc -l`
if [  $a  -eq  0   ];then
   service  httpd  start &> /dev/null
   sleep  15
   if [  `ps -C httpd --no-header | wc -l` -eq 0  ];then
      service keepalived  stop  &> /dev/null
   fi
fi
