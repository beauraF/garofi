# Garofi

A modest environment variables loader

## Installation

Add this line to your application’s Gemfile:

```ruby
gem 'garofi'
```

And run:

```sh
bundle install
```

## How It Works

1. Garofi will load the environment variable defined in `config/application.yml` into your ENV

2. Use Ruby methods to access them:

```ruby
ENV['REDIS_URL']
ENV.fetch('DATABASE_URL')
```

## Contributing

Everyone is encouraged to help improve this project. Here are a few ways you can help:

- Report [bugs](https://github.com/beauraF/garofi/issues)
- Fix bugs and submit [pull requests](https://github.com/beauraF/garofi/pulls)
- Write, clarify, or fix documentation
- Suggest or add new features
