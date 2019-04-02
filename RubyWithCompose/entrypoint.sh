#!/bin/bash
rm -f /maple-bear/tmp/pids/server.pid
rails s & ./bin/webpack-dev-server