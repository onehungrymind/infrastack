# !/bin/bash
docker run --name infrastack-postgres -e POSTGRES_USER=postgres -e POSTGRES_DB=public -d postgres:alpine
