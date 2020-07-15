[ ![Codeship Status for nailsong/exchange](https://app.codeship.com/projects/bfa56b70-a8df-0138-00db-3ee567a8a624/status?branch=master)](https://app.codeship.com/projects/bfa56b70-a8df-0138-00db-3ee567a8a624)

Demo: [https://new-exchange.herokuapp.com](https://new-exchange.herokuapp.com)

# Exchange

*Exchange* is a small Ruby on Rails project for currency conversion.

In it you simply choose the amount and currencies you want to convert, so the conversion is performed instantly.

## Ruby version:

* Ruby 2.6.5

## System dependencies:

* PostgreSQL

In development environment:

* [Docker](https://www.docker.com) - 19.03.12
* [Docker Compose](https://docs.docker.com/compose/) - 1.26.0

## Run app with docker compose:
```bash
git clone git@github.com:nailsong/exchange.git
cd exchange
docker-compose up
```

## How to run the test suite:
```bash
docker-compose run --rm app bundle exec rspec
```

## Deployment:

* Continuous integration at Codeship
* Automatic deployment at Heroku

## Details:

In this app we are using [currencydatafeed](https://currencydatafeed.com/) to obtain currency exchange, and the gem `blockchain` to get the exchange for bitcoin.