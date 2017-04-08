# jsoneditor-rails

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

The jsoneditor files will be added to the asset pipeline and available for you to use. In your `app/assets/javascripts/application.js` add these lines:

```js
//= require jsoneditor
```

If you want to use the minimalist version instead:

```js
//= require jsoneditor-minimalist
```

Also add the JSON Editor CSS to your `app/assets/stylesheets/application.scss`:

```css
@import "jsoneditor";
```

## Development

* Clone the repo
* `bundle install`

To update the vendor assets with the latest version run `rake update_json_editor` and create a pull request with those changes.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/javierjulio/jsoneditor-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
