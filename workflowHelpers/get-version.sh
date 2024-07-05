#!/bin/sh

grep "#### version=" "./README.md" | awk -F= '{print $2}' | tr -d ' " '