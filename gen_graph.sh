#!/bin/bash

BASE_DIR=/home/pi/dvb
TIMES="end-1d end-1w end-4w end-1y"

for i in $TIMES; do
    rrdtool graph images/combined-$i.png \
    --title="21337 Lüneburg | All Channels | $i" \
    --vertical-label='Bits per second' \
    -W "$(date '+%F %T %Z')" \
    --start $i \
    --slope-mode \
    -w 500 -h 250 \
    -l 0 -u 1167936000 \
    --color BACK#ededed \
    --color ARROW#000000 \
    DEF:b546min=${BASE_DIR}/546000000.rrd:bandwidth:MIN \
    DEF:b546avg=${BASE_DIR}/546000000.rrd:bandwidth:AVERAGE \
    DEF:b546max=${BASE_DIR}/546000000.rrd:bandwidth:MAX \
    DEF:b546last=${BASE_DIR}/546000000.rrd:bandwidth:LAST \
    DEF:b554min=${BASE_DIR}/554000000.rrd:bandwidth:MIN \
    DEF:b554avg=${BASE_DIR}/554000000.rrd:bandwidth:AVERAGE \
    DEF:b554max=${BASE_DIR}/554000000.rrd:bandwidth:MAX \
    DEF:b554last=${BASE_DIR}/554000000.rrd:bandwidth:LAST \
    DEF:b562min=${BASE_DIR}/562000000.rrd:bandwidth:MIN \
    DEF:b562avg=${BASE_DIR}/562000000.rrd:bandwidth:AVERAGE \
    DEF:b562max=${BASE_DIR}/562000000.rrd:bandwidth:MAX \
    DEF:b562last=${BASE_DIR}/562000000.rrd:bandwidth:LAST \
    DEF:b570min=${BASE_DIR}/570000000.rrd:bandwidth:MIN \
    DEF:b570avg=${BASE_DIR}/570000000.rrd:bandwidth:AVERAGE \
    DEF:b570max=${BASE_DIR}/570000000.rrd:bandwidth:MAX \
    DEF:b570last=${BASE_DIR}/570000000.rrd:bandwidth:LAST \
    DEF:b578min=${BASE_DIR}/578000000.rrd:bandwidth:MIN \
    DEF:b578avg=${BASE_DIR}/578000000.rrd:bandwidth:AVERAGE \
    DEF:b578max=${BASE_DIR}/578000000.rrd:bandwidth:MAX \
    DEF:b578last=${BASE_DIR}/578000000.rrd:bandwidth:LAST \
    DEF:b586min=${BASE_DIR}/586000000.rrd:bandwidth:MIN \
    DEF:b586avg=${BASE_DIR}/586000000.rrd:bandwidth:AVERAGE \
    DEF:b586max=${BASE_DIR}/586000000.rrd:bandwidth:MAX \
    DEF:b586last=${BASE_DIR}/586000000.rrd:bandwidth:LAST \
    DEF:b594min=${BASE_DIR}/594000000.rrd:bandwidth:MIN \
    DEF:b594avg=${BASE_DIR}/594000000.rrd:bandwidth:AVERAGE \
    DEF:b594max=${BASE_DIR}/594000000.rrd:bandwidth:MAX \
    DEF:b594last=${BASE_DIR}/594000000.rrd:bandwidth:LAST \
    DEF:b602min=${BASE_DIR}/602000000.rrd:bandwidth:MIN \
    DEF:b602avg=${BASE_DIR}/602000000.rrd:bandwidth:AVERAGE \
    DEF:b602max=${BASE_DIR}/602000000.rrd:bandwidth:MAX \
    DEF:b602last=${BASE_DIR}/602000000.rrd:bandwidth:LAST \
    DEF:b666min=${BASE_DIR}/666000000.rrd:bandwidth:MIN \
    DEF:b666avg=${BASE_DIR}/666000000.rrd:bandwidth:AVERAGE \
    DEF:b666max=${BASE_DIR}/666000000.rrd:bandwidth:MAX \
    DEF:b666last=${BASE_DIR}/666000000.rrd:bandwidth:LAST \
    DEF:b674min=${BASE_DIR}/674000000.rrd:bandwidth:MIN \
    DEF:b674avg=${BASE_DIR}/674000000.rrd:bandwidth:AVERAGE \
    DEF:b674max=${BASE_DIR}/674000000.rrd:bandwidth:MAX \
    DEF:b674last=${BASE_DIR}/674000000.rrd:bandwidth:LAST \
    DEF:b682min=${BASE_DIR}/682000000.rrd:bandwidth:MIN \
    DEF:b682avg=${BASE_DIR}/682000000.rrd:bandwidth:AVERAGE \
    DEF:b682max=${BASE_DIR}/682000000.rrd:bandwidth:MAX \
    DEF:b682last=${BASE_DIR}/682000000.rrd:bandwidth:LAST \
    DEF:b690min=${BASE_DIR}/690000000.rrd:bandwidth:MIN \
    DEF:b690avg=${BASE_DIR}/690000000.rrd:bandwidth:AVERAGE \
    DEF:b690max=${BASE_DIR}/690000000.rrd:bandwidth:MAX \
    DEF:b690last=${BASE_DIR}/690000000.rrd:bandwidth:LAST \
    DEF:b698min=${BASE_DIR}/698000000.rrd:bandwidth:MIN \
    DEF:b698avg=${BASE_DIR}/698000000.rrd:bandwidth:AVERAGE \
    DEF:b698max=${BASE_DIR}/698000000.rrd:bandwidth:MAX \
    DEF:b698last=${BASE_DIR}/698000000.rrd:bandwidth:LAST \
    DEF:b706min=${BASE_DIR}/706000000.rrd:bandwidth:MIN \
    DEF:b706avg=${BASE_DIR}/706000000.rrd:bandwidth:AVERAGE \
    DEF:b706max=${BASE_DIR}/706000000.rrd:bandwidth:MAX \
    DEF:b706last=${BASE_DIR}/706000000.rrd:bandwidth:LAST \
    DEF:b714min=${BASE_DIR}/714000000.rrd:bandwidth:MIN \
    DEF:b714avg=${BASE_DIR}/714000000.rrd:bandwidth:AVERAGE \
    DEF:b714max=${BASE_DIR}/714000000.rrd:bandwidth:MAX \
    DEF:b714last=${BASE_DIR}/714000000.rrd:bandwidth:LAST \
    DEF:b722min=${BASE_DIR}/722000000.rrd:bandwidth:MIN \
    DEF:b722avg=${BASE_DIR}/722000000.rrd:bandwidth:AVERAGE \
    DEF:b722max=${BASE_DIR}/722000000.rrd:bandwidth:MAX \
    DEF:b722last=${BASE_DIR}/722000000.rrd:bandwidth:LAST \
    DEF:b762min=${BASE_DIR}/762000000.rrd:bandwidth:MIN \
    DEF:b762avg=${BASE_DIR}/762000000.rrd:bandwidth:AVERAGE \
    DEF:b762max=${BASE_DIR}/762000000.rrd:bandwidth:MAX \
    DEF:b762last=${BASE_DIR}/762000000.rrd:bandwidth:LAST \
    DEF:b770min=${BASE_DIR}/770000000.rrd:bandwidth:MIN \
    DEF:b770avg=${BASE_DIR}/770000000.rrd:bandwidth:AVERAGE \
    DEF:b770max=${BASE_DIR}/770000000.rrd:bandwidth:MAX \
    DEF:b770last=${BASE_DIR}/770000000.rrd:bandwidth:LAST \
    DEF:b778min=${BASE_DIR}/778000000.rrd:bandwidth:MIN \
    DEF:b778avg=${BASE_DIR}/778000000.rrd:bandwidth:AVERAGE \
    DEF:b778max=${BASE_DIR}/778000000.rrd:bandwidth:MAX \
    DEF:b778last=${BASE_DIR}/778000000.rrd:bandwidth:LAST \
    DEF:b786min=${BASE_DIR}/786000000.rrd:bandwidth:MIN \
    DEF:b786avg=${BASE_DIR}/786000000.rrd:bandwidth:AVERAGE \
    DEF:b786max=${BASE_DIR}/786000000.rrd:bandwidth:MAX \
    DEF:b786last=${BASE_DIR}/786000000.rrd:bandwidth:LAST \
    DEF:b794min=${BASE_DIR}/794000000.rrd:bandwidth:MIN \
    DEF:b794avg=${BASE_DIR}/794000000.rrd:bandwidth:AVERAGE \
    DEF:b794max=${BASE_DIR}/794000000.rrd:bandwidth:MAX \
    DEF:b794last=${BASE_DIR}/794000000.rrd:bandwidth:LAST \
    DEF:b802min=${BASE_DIR}/802000000.rrd:bandwidth:MIN \
    DEF:b802avg=${BASE_DIR}/802000000.rrd:bandwidth:AVERAGE \
    DEF:b802max=${BASE_DIR}/802000000.rrd:bandwidth:MAX \
    DEF:b802last=${BASE_DIR}/802000000.rrd:bandwidth:LAST \
    DEF:b810min=${BASE_DIR}/810000000.rrd:bandwidth:MIN \
    DEF:b810avg=${BASE_DIR}/810000000.rrd:bandwidth:AVERAGE \
    DEF:b810max=${BASE_DIR}/810000000.rrd:bandwidth:MAX \
    DEF:b810last=${BASE_DIR}/810000000.rrd:bandwidth:LAST \
    DEF:b818min=${BASE_DIR}/818000000.rrd:bandwidth:MIN \
    DEF:b818avg=${BASE_DIR}/818000000.rrd:bandwidth:AVERAGE \
    DEF:b818max=${BASE_DIR}/818000000.rrd:bandwidth:MAX \
    DEF:b818last=${BASE_DIR}/818000000.rrd:bandwidth:LAST \
    CDEF:bmin=b546min,b554min,b562min,b570min,b578min,b586min,b594min,b602min,b666min,b674min,b682min,b690min,b698min,b706min,b714min,b722min,b762min,b770min,b778min,b786min,b794min,b802min,b810min,b818min,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN \
    CDEF:bavg=b546avg,b554avg,b562avg,b570avg,b578avg,b586avg,b594avg,b602avg,b666avg,b674avg,b682avg,b690avg,b698avg,b706avg,b714avg,b722avg,b762avg,b770avg,b778avg,b786avg,b794avg,b802avg,b810avg,b818avg,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN \
    CDEF:bmax=b546max,b554max,b562max,b570max,b578max,b586max,b594max,b602max,b666max,b674max,b682max,b690max,b698max,b706max,b714max,b722max,b762max,b770max,b778max,b786max,b794max,b802max,b810max,b818max,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN \
    CDEF:blast=b546last,b554last,b562last,b570last,b578last,b586last,b594last,b602last,b666last,b674last,b682last,b690last,b698last,b706last,b714last,b722last,b762last,b770last,b778last,b786last,b794last,b802last,b810last,b818last,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN \
    AREA:1167936000#D7E4CE \
    STACK:55040000#FEE4E4 \
    COMMENT:"Separate Channel Statistics\n" \
    COMMENT:" \n" \
    COMMENT:"QAM 256 (Σ 667.392 Mbit/s)\n" \
    AREA:b546avg#FF0000:'546 MHz      ' \
    GPRINT:b546avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b546min:MIN:"Min %5.2lf %s   " \
    GPRINT:b546max:MAX:"Max %5.2lf %s" \
    GPRINT:b546last:LAST:"  Last %5.2lf %s\n" \
    STACK:b554avg#FF4000:'554 MHz      ' \
    GPRINT:b554avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b554min:MIN:"Min %5.2lf %s   " \
    GPRINT:b554max:MAX:"Max %5.2lf %s" \
    GPRINT:b554last:LAST:"  Last %5.2lf %s\n" \
    STACK:b562avg#FF8000:'562 MHz      ' \
    GPRINT:b562avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b562min:MIN:"Min %5.2lf %s   " \
    GPRINT:b562max:MAX:"Max %5.2lf %s" \
    GPRINT:b562last:LAST:"  Last %5.2lf %s\n" \
    STACK:b570avg#FFBF00:'570 MHz      ' \
    GPRINT:b570avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b570min:MIN:"Min %5.2lf %s   " \
    GPRINT:b570max:MAX:"Max %5.2lf %s" \
    GPRINT:b570last:LAST:"  Last %5.2lf %s\n" \
    STACK:b578avg#FFFF00:'578 MHz      ' \
    GPRINT:b578avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b578min:MIN:"Min %5.2lf %s   " \
    GPRINT:b578max:MAX:"Max %5.2lf %s" \
    GPRINT:b578last:LAST:"  Last %5.2lf %s\n" \
    STACK:b586avg#BFFF00:'586 MHz      ' \
    GPRINT:b586avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b586min:MIN:"Min %5.2lf %s   " \
    GPRINT:b586max:MAX:"Max %5.2lf %s" \
    GPRINT:b586last:LAST:"  Last %5.2lf %s\n" \
    STACK:b594avg#80FF00:'594 MHz      ' \
    GPRINT:b594avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b594min:MIN:"Min %5.2lf %s   " \
    GPRINT:b594max:MAX:"Max %5.2lf %s" \
    GPRINT:b594last:LAST:"  Last %5.2lf %s\n" \
    STACK:b602avg#40FF00:'602 MHz      ' \
    GPRINT:b602avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b602min:MIN:"Min %5.2lf %s   " \
    GPRINT:b602max:MAX:"Max %5.2lf %s" \
    GPRINT:b602last:LAST:"  Last %5.2lf %s\n" \
    STACK:b666avg#00FF00:'666 MHz      ' \
    GPRINT:b666avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b666min:MIN:"Min %5.2lf %s   " \
    GPRINT:b666max:MAX:"Max %5.2lf %s" \
    GPRINT:b666last:LAST:"  Last %5.2lf %s\n" \
    STACK:b674avg#00FF40:'674 MHz      ' \
    GPRINT:b674avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b674min:MIN:"Min %5.2lf %s   " \
    GPRINT:b674max:MAX:"Max %5.2lf %s" \
    GPRINT:b674last:LAST:"  Last %5.2lf %s\n" \
    STACK:b682avg#00FF80:'682 MHz      ' \
    GPRINT:b682avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b682min:MIN:"Min %5.2lf %s   " \
    GPRINT:b682max:MAX:"Max %5.2lf %s" \
    GPRINT:b682last:LAST:"  Last %5.2lf %s\n" \
    STACK:b690avg#00FFBF:'690 MHz      ' \
    GPRINT:b690avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b690min:MIN:"Min %5.2lf %s   " \
    GPRINT:b690max:MAX:"Max %5.2lf %s" \
    GPRINT:b690last:LAST:"  Last %5.2lf %s\n" \
    COMMENT:" \n" \
    COMMENT:"QAM 64 (Σ 500.544 Mbit/s)\n" \
    STACK:b698avg#00FFFF:'698 MHz      ' \
    GPRINT:b698avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b698min:MIN:"Min %5.2lf %s   " \
    GPRINT:b698max:MAX:"Max %5.2lf %s" \
    GPRINT:b698last:LAST:"  Last %5.2lf %s\n" \
    STACK:b706avg#00BFFF:'706 MHz      ' \
    GPRINT:b706avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b706min:MIN:"Min %5.2lf %s   " \
    GPRINT:b706max:MAX:"Max %5.2lf %s" \
    GPRINT:b706last:LAST:"  Last %5.2lf %s\n" \
    STACK:b714avg#0080FF:'714 MHz      ' \
    GPRINT:b714avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b714min:MIN:"Min %5.2lf %s   " \
    GPRINT:b714max:MAX:"Max %5.2lf %s" \
    GPRINT:b714last:LAST:"  Last %5.2lf %s\n" \
    STACK:b722avg#0040FF:'722 MHz      ' \
    GPRINT:b722avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b722min:MIN:"Min %5.2lf %s   " \
    GPRINT:b722max:MAX:"Max %5.2lf %s" \
    GPRINT:b722last:LAST:"  Last %5.2lf %s\n" \
    STACK:b762avg#0000FF:'762 MHz      ' \
    GPRINT:b762avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b762min:MIN:"Min %5.2lf %s   " \
    GPRINT:b762max:MAX:"Max %5.2lf %s" \
    GPRINT:b762last:LAST:"  Last %5.2lf %s\n" \
    STACK:b770avg#4000FF:'770 MHz      ' \
    GPRINT:b770avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b770min:MIN:"Min %5.2lf %s   " \
    GPRINT:b770max:MAX:"Max %5.2lf %s" \
    GPRINT:b770last:LAST:"  Last %5.2lf %s\n" \
    STACK:b778avg#8000FF:'778 MHz      ' \
    GPRINT:b778avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b778min:MIN:"Min %5.2lf %s   " \
    GPRINT:b778max:MAX:"Max %5.2lf %s" \
    GPRINT:b778last:LAST:"  Last %5.2lf %s\n" \
    STACK:b786avg#BF00FF:'786 MHz      ' \
    GPRINT:b786avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b786min:MIN:"Min %5.2lf %s   " \
    GPRINT:b786max:MAX:"Max %5.2lf %s" \
    GPRINT:b786last:LAST:"  Last %5.2lf %s\n" \
    STACK:b794avg#FF00FF:'794 MHz      ' \
    GPRINT:b794avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b794min:MIN:"Min %5.2lf %s   " \
    GPRINT:b794max:MAX:"Max %5.2lf %s" \
    GPRINT:b794last:LAST:"  Last %5.2lf %s\n" \
    STACK:b802avg#FF00BF:'802 MHz      ' \
    GPRINT:b802avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b802min:MIN:"Min %5.2lf %s   " \
    GPRINT:b802max:MAX:"Max %5.2lf %s" \
    GPRINT:b802last:LAST:"  Last %5.2lf %s\n" \
    STACK:b810avg#FF0080:'810 MHz      ' \
    GPRINT:b810avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b810min:MIN:"Min %5.2lf %s   " \
    GPRINT:b810max:MAX:"Max %5.2lf %s" \
    GPRINT:b810last:LAST:"  Last %5.2lf %s\n" \
    STACK:b818avg#FF0040:'818 MHz      ' \
    GPRINT:b818avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b818min:MIN:"Min %5.2lf %s   " \
    GPRINT:b818max:MAX:"Max %5.2lf %s" \
    GPRINT:b818last:LAST:"  Last %5.2lf %s\n" \
    COMMENT:" \n" \
    COMMENT:"Overall Channel Statistics\n" \
    GPRINT:bavg:AVERAGE:"                 Avg %5.2lf %s" \
    GPRINT:bmin:MIN:"   Min %5.2lf %s" \
    GPRINT:bmax:MAX:"   Max %5.2lf %s" \
    GPRINT:blast:LAST:"  Last %5.2lf %s\n" \
    COMMENT:" \n" \
    HRULE:1167936000#000000:'Overall capacity (1167.936 Mbit/s)':dashes=5 \
    LINE1:bmax#5f5f5f:"Peak-Bandwidth"
    echo ""
done

sudo cp images/* /var/www/html
