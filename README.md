# track_your_workout_backend
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <img src="https://github.com/SincerelyBrittany/trackYourWorkout/blob/master/track-your-workout-frontend/styles/workout_img.png" alt="Logo" >

  <h3 align="center"> Track Your Workout &mdash; Backend API</h3>

  <p align="center">
    Rails API backend for the <a href="https://github.com/SincerelyBrittany/trackYourWorkout">Track Your Workout</a> application. Provides RESTful endpoints for managing users and workout entries, backed by PostgreSQL.
    <br />
    <a href="https://www.youtube.com/watch?v=yA5mG-l8TuA&ab_channel=BuildWithBrittany">View Youtube Demo</a> 
    &middot;
    <a href="https://dev.to/sincerelybrittany/javascript-and-rails-single-page-application-spa-3opc">Blog</a> 
    &middot;
    <a href="https://github.com/SincerelyBrittany/track_your_workout_backend/issues">Report Bug</a>
    &middot;
    <a href="https://github.com/SincerelyBrittany/track_your_workout_backend/issues">Request Feature</a> 
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [API Endpoints](#api-endpoints)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

This is the Rails API backend for Track Your Workout. It handles user creation, workout storage, and serves JSON responses to the JavaScript frontend. The API is versioned under `/api/v1/` and uses Active Model Serializers to shape the response data.

### Built With
* [Ruby-on-Rails](https://guides.rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/)
* [Active Model Serializers](https://github.com/rails-api/active_model_serializers)
*  Love ❤️


<!-- GETTING STARTED -->
## Getting Started

To get the backend running locally you will need Ruby, Rails, and PostgreSQL installed. Check out the [Rails getting started guide](https://guides.rubyonrails.org/v5.0/getting_started.html) and [PostgreSQL docs](https://www.postgresql.org/about/) if you need to install either.

### Prerequisites

* Ruby 2.7+
* Rails 6+
* PostgreSQL

### Installation

1. Clone the repo
```sh
git clone git@github.com:SincerelyBrittany/track_your_workout_backend.git
```

2. Install gems
```sh
bundle install
```

3. Set up the database
```sh
rails db:create db:migrate db:seed
```

4. Start the server
```sh
rails s
```

The API will be available at `http://localhost:3000`.


<!-- API ENDPOINTS -->
## API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| `POST` | `/users` | Create or find a user by username |
| `GET` | `/api/v1/user_workouts?user_id=:id` | Get all workouts for a user |
| `POST` | `/api/v1/user_workouts` | Save a new workout |
| `PUT` | `/api/v1/user_workouts/:id` | Update a workout |
| `DELETE` | `/api/v1/user_workouts/:id` | Delete a workout |


<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/SincerelyBrittany/track_your_workout_backend/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact
Connect/Follow me:

[![Linkedin][linkedin-shield]][linkedin-url]
[![Twitter][twitter-shield]][twitter-url]
[![Dev.to][dev-to-shield]][dev-to-url]


<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Youtube](https://youtube.com)
* [Google](https://google.com)
* [Flatiron School](https://flatironschool.com/)


<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/SincerelyBrittany/track_your_workout_backend.svg?style=flat-square
[contributors-url]: https://github.com/SincerelyBrittany/track_your_workout_backend/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/SincerelyBrittany/track_your_workout_backend.svg?style=flat-square
[forks-url]: https://github.com/SincerelyBrittany/track_your_workout_backend/network/members
[stars-shield]: https://img.shields.io/github/stars/SincerelyBrittany/track_your_workout_backend.svg?style=flat-square
[stars-url]: https://github.com/SincerelyBrittany/track_your_workout_backend/stargazers
[issues-shield]: https://img.shields.io/github/issues/SincerelyBrittany/track_your_workout_backend.svg?style=flat-square
[issues-url]: https://github.com/SincerelyBrittany/track_your_workout_backend/issues
[license-shield]: https://img.shields.io/github/license/SincerelyBrittany/track_your_workout_backend.svg?style=flat-square
[license-url]: https://github.com/SincerelyBrittany/track_your_workout_backend/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/sincerelybrittany/
[twitter-shield]:https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Ftwitter.com%2FSincerelyBrittt
[twitter-url]: https://twitter.com/SincerelyBrittt
[dev-to-url]: https://dev.to/sincerelybrittany
[dev-to-shield]:https://img.shields.io/badge/-Dev.to-black.svg?style=flat-square&logo=dev.to&colorB=555
