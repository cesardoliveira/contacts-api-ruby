# README

# Ruby API Contacts
`contacts-api-ruby` is a backend server to creating your contacts. This is a simple example to show basic `Ruby on Rails` API structure. 

# Getting Started
Before you start make sure you have installed:
* [`Ruby`](https://www.ruby-lang.org/en/documentation/installation/)
* [`Ruby on Rails`](https://guides.rubyonrails.org/v5.0/getting_started.html)
* [`SQLite`](https://rubygems.org/gems/sqlite3-ruby/versions/1.3.3) 

If you are using Windows install the [`Ruby Devkit`](https://rubyinstaller.org/).

# Available Scripts
Clone repo, in the project directory, you can run on terminal the follwing comands:

Update RubyGem to the latest version.
```git
gem update --system
```

Update your gems to the latest available versions.
```git
bundle update --bundler
```
Active Record Migrations.
```git
rails db:migrate
```

Create a user to be authenticated:
```git
rails c

User.create(email: 'example@example', password: 'password')
```
Copy the `authentication_token` to use in your requests.

To start the server use:
```git
rails s
```