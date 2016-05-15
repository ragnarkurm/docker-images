#!/bin/bash

nice -n 19 ionice -c 3 /usr/bin/rdiff-backup --server --restrict-read-only /host
