RJC 2014 website
-

This is a repository for RJC 2014 website.

Dependencies
-

- Ruby 2.1.0-p0
  - `rbenv install 2.1.0-p0`
- Rails 4.0.2

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

- Admin panel on `/admin` (not done yet)
- 'Static' pages like root page, `/about`, `/creators` and `/contacts`
- Events `/events` with index and show pages
