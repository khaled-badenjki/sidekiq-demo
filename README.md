# Sidekiq Demo

[![Ruby Version](https://img.shields.io/badge/Ruby-3.1.0-red.svg)](https://www.ruby-lang.org/en/) [![Ruby Version](https://img.shields.io/badge/Rails-7.0.1-red.svg)](https://www.ruby-lang.org/en/)

## Introduction 📚
A demo for sidekiq with Redis

## Dependencies
This service needs a running **redis** instance, and a **postgresql** database
Also, you need the gem **foreman** to run parallel threads

## Start
To run a redis instance (assuming you have docker installed) run this:

    docker run -d --name redis-stack -p 6379:6379 -p 8001:8001 redis/redis-stack:latest

To run a postgresql instance, run this:

    docker run --name postgres -e POSTGRES_USER=user -e POSTGRES_PASSWORD=pass -p 5432:5432 -d postgres

To install foreman gem, run this:

    gem install foreman

then run these to start the application

    rails db:create
    rails db:migrate
    foreman start -f Procfile.dev

