# Capistrano3::Casica

Casica status updater for capistrano3.

## Installation

Add this line to application's Gemfile:

```ruby
gem 'capistrano3-casica', require: false
```

## Usage

in `Capfile`:

```
require 'capistrano3/casica'
```

## Configuration

in `config/deploy/staging.rb`:

```
set :casica_token, "<token>"
set :casica_project_id, "<project_id>"
set :casica_from_status, "merged"
set :casica_to_status, "stg_deployed"
```

in `config/deploy/production.rb`:

```
set :casica_token, "<token>"
set :casica_project_id, "<project_id>"
set :casica_from_status, "confirmed"
set :casica_to_status, "deployed"
```

## Contributing

1. Fork it ( https://github.com/startup-technology/capistrano3-casica/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
