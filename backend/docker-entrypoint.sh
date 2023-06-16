#!/bin/bash
set -e
exec bash -c "gunicorn --bind 0.0.0.0:9000 kittygram_backend.wsgi"