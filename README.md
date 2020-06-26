# Twitter Redesign - Ruby on Rails Capstone Project

- The app follows the following User Journey to build the MVP
1. The user logs in to the app, only by typing the username (a proper authenticated login is **not** a requirement).
2. The user is presented with the homepage (see the *Homepage* screenshot above) that includes:
    1. Left-side menu (includes only links to pages that are implemented).
    2. *Tweets* tab in the centre (skip *Photos* and *Videos* for this MVP).
    3. Right-side section with *Who to follow (*skip *Trending for* this MVP).
3. The *Tweets* section includes:
    1. Simple form for creating a tweet.
    2. List of all tweets (sorted by most recent) that display tweet text and author details.
4. The *Who to follow* section includes:
    1. List of profiles that are not followed by the logged-in user (ordered by most recently added).
5. When the user opens the profile page (see the *Userpage* screenshot above), they can see:
    1. Left-side menu (includes only links to pages that are implemented).
    2. Cover picture and *Tweets* tab in the centre (skip other tabs and *Tweet to user* form).
    3. Right-side section with *Profile detailed info.*
6. The *Profile detailed info* section includes:
    1. User photo.
    2. Button to follow a user.
    3. Stats: total number of tweets, number of followers and number of following users.
    4. List of people who follow this user.
7. At the end extend your MVP app with one simple feature of your choice.

You should follow the guidelines of the given design, including:

- colors (they are not explicit, you should pick them from design)
- typographies: font face, size and weight (use similar ones to the design)
- layout: composition and space between elements

## Built With

- Ruby v2.7
- Ruby on Rails v6.0.3
- Gems used for testing: Capybara, Rspec-Rails, Shoulda-matchers and FactoryBot

## Live Demo

[Heroku App Link]()

## Getting Started

To get a local copy up and running follow these steps:

### Prerequisites

- Ruby: 2.7
- Rails: 6.0.3
- Postgres: >=9.5
- Git

### Usage

- Fork/Clone this project to your local machine
- Open folder in your local enviroment and run these lines of code to get started:

Install gems with:

```Ruby
    bundle install
```

Setup database with:

```Ruby
   rails db:create
   rails db:migrate
```

Start server with:

```Ruby
    rails server
```

Then open a web page and go to [port 3000 on your local machine.](http://localhost:3000)

### Running tests

```Ruby
    rspec
```

### Deployment

The application was deployed on heroku.
To deploy your own copy, you can follow the following [steps:](https://devcenter.heroku.com/articles/git)

## Authors

👤 **Rahma Halane**

- Github: [@Imahnama](https://github.com/imahnama)
- Twitter: [@halane_rahma](https://twitter.com/halane_rahma)
- Linkedin: [Rahmahalane](https://linkedin.com/Rahmahalane)

## 🤝 Contributing

Contributions and feature requests are welcome!

Start by:

- Forking the project
- Cloning the project to your local machine
- `cd` into the project directory
- Run `git checkout -b your-branch-name`
- Make your contributions
- Push your branch up to your forked repository
- Open a Pull Request with a detailed description to the development(or master if not available) branch of the original project for a review

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
- You can access all the design info (color, typography, layouts) in this link: (https://www.behance.net/gregoirevella)

- Design Idea by [Gregoire Vella](https://www.behance.net/gregoirevella)
