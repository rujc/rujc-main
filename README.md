RJC 2014 website
-

[![Build Status](https://travis-ci.org/juggler/rjc.png?branch=master)](https://travis-ci.org/juggler/rjc)

This is a repository for [RJC 2014 website](http://rjc2014.ru).

Dependencies
-

- Ruby 2.1.1
  - `rbenv install 2.1.1`
- Rails 4.0.2
- PostgreSQL 9.3.4

Quick Start
-

Clone this repo:

```
git clone git@github.com:juggler/rjc.git
cd rjc
```

Install dependencies and setup db:

```
bundle install
bundle exec rake db:setup
```

Run rails server:

```
bin/rails s
```

What's inside?
-

- Admin panel on `/admin`
- 'Static' pages `main`, `/about`, `/creators` and `/contacts`
- Events `/events/:id` pages
- Registration modal window
