# !/bin/bash
docker run --name infrastack-postgres -p 5432:5432 -e POSTGRES_USER=postgres -e POSTGRES_DB=public -d postgres:alpine
