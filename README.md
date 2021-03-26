# Whisky Tracker

[![Rails Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop-rails)


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
