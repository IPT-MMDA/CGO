#!/bin/bash

python3 ~/cgo_parse.py
aws s3 sync ~/data/ s3://smart-city-aq/data/tables/cgo/
date >> log.txt
ls data >> log.txt
rm ~/data/*

