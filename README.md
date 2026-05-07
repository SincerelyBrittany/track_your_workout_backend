# Track Your Workout — Backend API

[![Ruby on Rails](https://img.shields.io/badge/Rails-6.0-red)](https://rubyonrails.org/)
[![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-blue)](https://www.postgresql.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Rails API backend for the [Track Your Workout](https://github.com/SincerelyBrittany/trackYourWorkout) application. Provides RESTful endpoints for managing users and workout entries, with data persisted in PostgreSQL.

## Tech Stack

- **Ruby on Rails 6** (API mode)
- **PostgreSQL**
- **Active Model Serializers** for structured JSON responses

## Getting Started

### Prerequisites

- Ruby 2.7+
- Rails 6+
- PostgreSQL

### Installation

```sh
bundle install
rails db:create db:migrate db:seed
rails s
```

The API runs on `http://localhost:3000` by default.

## API Reference

### Users

#### Create / Find User
```
POST /users
Content-Type: application/json

{ "username": "brittany" }
```
Creates the user if they don't exist, otherwise returns the existing user.

### User Workouts

#### List Workouts for a User
```
GET /api/v1/user_workouts?user_id=:id
```

#### Create Workout
```
POST /api/v1/user_workouts
Content-Type: application/json

{
  "user_workout": {
    "name": "30 Min HIIT Cardio",
    "url": "https://www.youtube.com/embed/abc123",
    "time": "2024-01-15T09:00",
    "date": "2024-01-15",
    "username": 1
  }
}
```

#### Update Workout
```
PUT /api/v1/user_workouts/:id
```

#### Delete Workout
```
DELETE /api/v1/user_workouts/:id
```
Returns `{ "message": "Workout deleted successfully" }`

## Data Models

```
users
  username: string

workouts
  name: string
  url:  string
  time: time

user_workouts  (join table)
  user_id:    integer (FK → users)
  workout_id: integer (FK → workouts)
  date:       date
```

## Project Structure

```
app/
├── controllers/
│   ├── application_controller.rb
│   ├── sessions_controller.rb
│   ├── users_controller.rb
│   └── api/v1/
│       ├── user_workouts_controller.rb
│       └── workouts_controller.rb
├── models/
│   ├── user.rb
│   ├── workout.rb
│   └── user_workout.rb
└── serializers/
    ├── user_workouts_serializer.rb
    └── workout_serializer.rb
```

## License

Distributed under the MIT License.
