#!/bin/bash
# lists only those files that start with a number
gvim `ls [0-9]* | tail -n 1`
