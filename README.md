# trackYourWorkout
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://www.example.com/">
    <img src="https://github.com/SincerelyBrittany/trackYourWorkout/blob/master/track-your-workout-frontend/styles/workout_img.png" alt="Logo" >
  </a>

  <h3 align="center"> Track Your Workout</h3>

  <p align="center">
    This is a single page application ("SPA") for keeping track of your workouts. I really enjoy working out and since COVID, it has been hard to keep track of the workouts on youtube. Although playlist are nice, I thought it would be cool to have a place to see all workouts for a particular date and/or time.
    <br />
    <!-- <a href="https://www.example.com/"><strong>Explore the docs »</strong></a>
    <br />
    <br />-->
    <i> <a href=""> </a>Live Site - Coming Soon </i>
    ·
    <a href="https://www.youtube.com/watch?v=yA5mG-l8TuA&ab_channel=BuildWithBrittany">View Youtube Demo</a> 
    ·
    <a href="https://dev.to/sincerelybrittany/javascript-and-rails-single-page-application-spa-3opc">Blog</a> 
     ·
    <a href="https://github.com/SincerelyBrittany//trackYourWorkout/issues">Report Bug</a>
    ·
    <a href="https://github.com/SincerelyBrittany//trackYourWorkout/issues">Request Feature</a> 
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://www.example.com/)

This application was built with a rails backend and Javascript frontend. 

### Built With
* [Ruby-on-Rails](https://guides.rubyonrails.org/)
* [postgresql](https://www.postgresql.org/)
* [byebug](https://rubygems.org/gems/byebug/versions/9.0.6)
* [Javascript](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
*  Love ❤️


<!-- GETTING STARTED -->
## Getting Started

To get the application started you must have ruby and postgresql installed on your computer. Checkout the ruby on rails [getting-started-guide](https://guides.rubyonrails.org/v5.0/getting_started.html) to learn how to install it on your device. If you need to install postgres check out the doumentation [here](https://www.postgresql.org/about/).

### Prerequisites
Other than the gems listed in this app's Gemfile, you will need to have [Ruby](https://www.ruby-lang.org/en/downloads/) and [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html) installed on your local machine as well as the ability to install Ruby gems.

Before running your server, you will need to install the gems and add content to your database manually or you can use the seeds file:

To install the gems first cd into <a href="https://github.com/SincerelyBrittany/track_your_workout_backend"> track_your_workout_backend </a> and run the following:

```sh
bundle install
```

To run your migrations and update your db/schema.rb file to match the structure of the database, run the following:

```sh
rails db:create
```

```sh
rails db:migrate
```

To create data in the database, run the following:
```sh
rails db:seed
```

```sh
rails s
```
and then go to your favorite browser and visit this webpage "http://localhost:3000/api/v1/workouts" 

### Installation

1. Clone the repo
```sh
git clone git@github.com:SincerelyBrittany/trackYourWorkout.git
```
3. Cd into backend and install the gemfile packages
```sh
bundle install
```
4. Run rails s
5. cd into frontend and open index.html


<!-- USAGE EXAMPLES -->
<!-- ## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_

 -->

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/SincerelyBrittany//trackYourWorkout/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

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
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/SincerelyBrittany/trackYourWorkout.svg?style=flat-square
[contributors-url]: https://github.com/SincerelyBrittany/trackYourWorkout/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/SincerelyBrittany/trackYourWorkout.svg?style=flat-square
[forks-url]: https://github.com/SincerelyBrittany//trackYourWorkout/network/members
[stars-shield]: https://img.shields.io/github/stars/SincerelyBrittany/trackYourWorkout.svg?style=flat-square
[stars-url]: https://github.com/SincerelyBrittany/trackYourWorkout/stargazers
[issues-shield]: https://img.shields.io/github/issues/SincerelyBrittany/trackYourWorkout.svg?style=flat-square
[issues-url]: https://github.com/SincerelyBrittany/trackYourWorkout/issues
[license-shield]: https://img.shields.io/github/license/SincerelyBrittany/trackYourWorkout.svg?style=flat-square
[license-url]: https://github.com/SincerelyBrittany/trackYourWorkout/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/sincerelybrittany/
[twitter-shield]:https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Ftwitter.com%2FSincerelyBrittt
[twitter-url]: https://twitter.com/SincerelyBrittt
[dev-to-url]: https://dev.to/sincerelybrittany
[dev-to-shield]:https://img.shields.io/badge/-Dev.to-black.svg?style=flat-square&logo=dev.to&colorB=555
[product-screenshot]: https://github.com/SincerelyBrittany/trackYourWorkout/blob/fix-search/track-your-workout-frontend/styles/workout_gif.gif
