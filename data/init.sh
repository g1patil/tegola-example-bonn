#!/bin/bash

sleep 3
psql -h postgis -p 5432 -U postgres -d bonn </data/bonn_backup.sql
psql -h postgis -p 5432 -U postgres -d bonn -f /data/sql/add_index.sql
rm /data/bonn_backup.sql
rm /data/._bonn_backup.sql
