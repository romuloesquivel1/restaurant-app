# Restaurant App

Web application designed to facilitate the management of restaurants, dishes and orders. This tool gives restaurant owners the ability to efficiently manage their business, allowing them to add, delete, update and visualize relevant information.

## Demo

[Link](https://restaurant-app-production-1aa5.up.railway.app/)

### Screenshots

![HomePage](https://github.com/aldosalasrdz/restaurant-app/assets/52344459/69c01772-efc1-4061-9ef4-459f8ae45a7b)

![RestaurantPage](https://github.com/aldosalasrdz/restaurant-app/assets/52344459/be133ee3-6916-450d-8bf3-36297cd66de4)

## Table of content

- [Pre-requisites](#pre-requisites)
- [Run locally](#run-locally)
- [Technologies used](#technologies-used)
- [Status](#status)
- [Author](#author)
- [License](#license)

## Pre-requisites

Before you start, make sure you have the following:

- [Ruby](https://www.ruby-lang.org/)
- [Rails](https://rubyonrails.org/)
- [PostgreSQL](https://www.postgresql.org/)

## Run Locally

Clone the project

```sh
git clone https://github.com/aldosalasrdz/restaurant-app --depth 1
```

Go to the project directory

```sh
cd restaurant-app
```

Install dependencies

```sh
bundle install
```

Create the database

```sh
rails db:create
```

Migrate the database

```sh
rails db:migrate
```

Build styles

```sh
rails tailwindcss:build
```

Start the server

```sh
rails server
```

Or build and start the server on save

```sh
./bin/dev
```

## Technologies used

- Ruby on Rails
- PostgreSQL

## Status

Working on create Tailwind components

## Author

- [@aldosalasrdz](https://www.github.com/aldosalasrdz)

## License

[MIT](https://choosealicense.com/licenses/mit/)
