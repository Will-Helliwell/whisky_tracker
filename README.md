# Whisky Tracker

[![Rails Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop-rails)    
[![Build Status](https://www.travis-ci.com/Will-Helliwell/whisky_tracker.svg?branch=main)](https://www.travis-ci.com/Will-Helliwell/whisky_tracker)

## Current Progress

Full details can be found in [this Trello board](https://trello.com/b/fiTYUug4/whisky-tracker), which I use to manage my progress.

#### Completed:
- Planning and setup of basic infrastructure (Rails, React, PostgreSQL)
- Decision to use RSpec for testing. First unit and feature test passing.
- Setup Travis for continuous integration - many hurdles here, including [Mimemagic's unfortunately-timed decision](https://dev.to/cseeman/what-s-up-with-mimemagic-breaking-everything-he1) to break all Rails 6.1+ apps...

#### In progress:

#### To do next
- Users can sign-up (plan to use Devise for this)
- Feature tests - Capybara not yet recognising React elements


## About

Whisky-Tracker is a web-app which allows signed-up users to track the prices of their favourite whiskies so that they can make purchases when the prices are optimal.

Users can add new bottles to their personal 'my whiskies' page. For each of these bottles, they can input the URLs of the websites that sell their desired bottle. Whisky-Tracker will fetch the prices found at all of these URLs each day, and send the user an email alert when they are able to purchase a tracked bottle at their desired price (which the set can manually set).

### Market Gap

Currently, camelcamelcamel.com does a great job at tracking some of the cheaper, high volume whiskies (because these are currently always cheapest on Amazon.co.uk, which camelcamelcamel is able to track).

The problem comes for whiskies that more niche or higher-end. These are often found on other smaller sellers sites for better prices, or are not available on Amazon at all.

Therefore the only solution for a user to track these whiskies is to manually navigate to multiple smaller sellers' websites each time they want to check prices. Not only is this an inconvenience, but it also means they are far more likely to have to purchase at non-optimal prices (which can cost quite a lot of money given the average price of higher-end bottles).

Whisky-Tracker solves this by automating the price-checking for the user.

### User Stories

```
As a user
So that
I would like to sign up

As a user
So that
I would like to sign-in

As a user
So that
I would like to sign-out

As a user
So that I can start tracking a whisky
I would like to add add a description and an Amazon URL to ‘my whiskies’

As a user
So that I can see the current price of my tracked whiskies
I would like to see a summary of my tracked whiskies in one place showing the description and current price (whole and /litre)

As a user
So that I can see the current price of my tracked whiskies
I would like a nice image to be included for each of my tracked whiskies

As a user
So that I can buy one of ‘my whiskies’ when it is cheap
I would like to click a link through to the retailer’s page

As a user
So that I know I am getting the current price
I would like the prices to refresh at least each morning

As a user
So that I know I can see how current the price is
I would like know the latest refresh date for the prices

As a user
So that I can find the best price on the market
I would like to add URLs from other websites to ‘my whiskies’

As a user
So that I can manage the urls for each whisky
I would like to see the site, url, current price and date-added for each tracked link

As a user
So that I can manage the urls for each whisky
I would like to be able to add and delete urls for each of ‘my whiskies’ after creation

As a user
So that I can act quickly to get best value
I would like to receive an email when a tracked whisky drops below a price specified by me
```

## Tech Stack (Planned)

| Technology    | Use                           |
| ------------- | ----------------------------- |
| Ruby-on-Rails          | Web application framework |
| React         | Frontend Framework            |
| Capybara       | Feature testing               |
| Rspec       | Unit testing                  |
| PostgreSQL       | Database                      |
| CSS/Bootstrap          | Styling                       |
| Travis        | CI/CD                         |
| Heroku        | Live deployment (work in progress)        |
| Rubocop        | Linting                       |
| Simplecov     | Test Coverage     |


## To Run
### Setup
```
bundle
rails db:create
rails db:migrate
```
### Tests

To run all tests
```
rspec
```
To run only unit tests:
```
rspec --exclude-pattern "spec/features/**/*_spec.rb"
```
To run only feature tests:
```
rspec spec/features
```
nb - Simplecov code coverage will only be accurate when you run all tests together.

To turn the headless browser during feature tests (for debugging purposes), uncomment the last line of ./spec/rails_helper.rb


## Learnings

- Choice between minitest and rspec as frameworks + how to set up rspec with simplecov specifically for Rails (difficulty of setting up rspec with Minitest)
- Adding pending tests to keep an accurate coverage figure whilst retaining as yet unused file structures (e.g. mailers, jobs etc.)
- Check date of articles when debugging - found one was a major live issue from a few days before, hence no permanent fix yet, just a temporary workaround
- When debugging Travis setup, pay close attention to 'hidden' errors, starting with the one closest to the top. 
- You need to configure Capybara before it can 'see' React components
