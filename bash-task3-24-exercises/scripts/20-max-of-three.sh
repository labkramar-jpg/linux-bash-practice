#!/usr/bin/env bash
a=2
b=4
c=12
max=$a
if ((b > max)); then max=$b; fi
if ((c > max)); then max=$c; fi
echo "$max"
