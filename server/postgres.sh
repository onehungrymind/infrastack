# !/bin/bash
docker run -e POSTGRES_USER=postgres -e POSTGRES_DB=public -d postgres:alpine
