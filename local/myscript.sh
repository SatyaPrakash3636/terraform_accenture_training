#!/bin/bash
hostname -I >> /tmp/systeminfo
free -h >> /tmp/systeminfo
lscpu >> /tmp/systeminfo
lspci >> /tmp/systeminfo