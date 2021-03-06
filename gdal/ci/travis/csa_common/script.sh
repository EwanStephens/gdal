#!/bin/sh

set -e

if grep -r "\\.c" gdal/scanbuildoutput | grep "<string>" | grep -v -e "clang version" -e "<key>" -e degrib -e libjpeg -e libpng -e EHapi -e GDapi -e SWapi -e osr_cs_wkt_parser -e ods_formula_parser -e swq_parser -e json_tokener; then
    echo error && /bin/false
else
    echo ok
fi
