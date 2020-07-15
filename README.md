# Exchange

**Exchange** is a small Ruby on Rails project for currency conversion.

In it you simply choose the amount and currencies you want to convert, so the conversion is performed instantly.

## Ruby version:

* Ruby 2.6.5

## System dependencies:

* PostgreSQL

In development environment:

* Docker (19.03.12)
* Docker compose (1.26.0)

## Run app with docker compose:
```bash
docker-compose up
```

## How to run the test suite:
```bash
docker-compose run --rm app bundle exec rspec
```

## Deployment instructions:

* Automatic deployment at Heroku

