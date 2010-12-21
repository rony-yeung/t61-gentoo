#!/bin/sh

ls | while read f; do [ -d $f ] && ls -la $f/* ; done | cut -b 40-
