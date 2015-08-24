# Omniauth Telphin

This gem contains the [Telphin](https://www.telphin.ru/) strategy for OmniAuth.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-telphin'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install omniauth-telphin


## Usage

Be sure to define callback URL in application version settings at [partner control panel](https://pbx.telphin.ru), for example 'https://127.0.0.1:4567/auth/telphin/callback'.

```ruby
  Rails.application.config.middleware.use OmniAuth::Builder do
      provider :telphin, '<<<client_id>>>', '<<<client_secret>>>' 
  end
```

Also you can see dead-simple example in *example* directory


## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-telphin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
