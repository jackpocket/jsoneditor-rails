# jsoneditor-rails

[![Gem Version](https://badge.fury.io/rb/jsoneditor-rails.svg)](https://badge.fury.io/rb/jsoneditor-rails)
![CI Build](https://github.com/jackpocket/jsoneditor-rails/workflows/CI%20Build/badge.svg)

This gem packages the [JSON Editor](https://github.com/josdejong/jsoneditor) assets (JavaScripts, stylesheets, and images) for the Rails asset pipeline, so you don't have to download a package.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jsoneditor-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jsoneditor-rails

## Usage

In your `app/assets/javascripts/application.js` add:

```js
//= require jsoneditor

// Or use the minimalist version instead
//= require jsoneditor-minimalist
```

Then add the JSON Editor CSS to your `app/assets/stylesheets/application.scss`:

```css
@import "jsoneditor";
```

## Development

* `git clone https://github.com/jackpocket/jsoneditor-rails.git`
* `bundle install`
* `rake update_assets`
* Create pull request with latest changes

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jackpocket/jsoneditor-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
