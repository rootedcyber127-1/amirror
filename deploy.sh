#!/bin/bash
git clone https://github.com/sivel/speedtest-cli.git > /dev/null 2>&1
cd speedtest-cli
python3 setup.py install > /dev/null 2>&1
python3 speedtest.py --secure | grep -e "from" -e "Down" -e "Up"
