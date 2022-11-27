#!/usr/bin/env bash




tar xvf table.tar.gz

python screener_lenient.py

python screener_strict.py

python screener_strict_1.py

python screener_strict_2.py



rm -r table/

rm table.tar.gz
