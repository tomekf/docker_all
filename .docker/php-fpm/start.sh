#!/bin/bash

/usr/bin/supervisord
tail -f /var/log/supervisor/supervisord.log