# The Official DocuSign Ruby Client

[![RubyGems version][rubygems-image]][rubygems-url]
[![RubyGems downloads][downloads-image]][downloads-url]
[![Build status][travis-image]][travis-url]

You can sign up for a free [developer sandbox](https://www.docusign.com/developer-center).

## Requirements
Ruby 2.1.0 or higher [https://www.ruby-lang.org/en/].

## Installation
Add this line to your application's Gemfile:

    gem 'docusign_esign'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install docusign_esign

## JWT Authorization Example

See the [JWT Ruby example](https://github.com/docusign/eg-01-ruby-jwt).

See [unit_tests_using_jwt_spec.rb](./tests/spec/unit_tests_using_jwt_spec.rb) for additional examples.

## Testing

Unit tests are available in the [tests/spec](./tests/spec) folder. 

Follow the steps below to run the test cases

* Fill in all the required fields/values
* Run the following command from the [tests/spec](./tests/spec) folder 

        bundle exec rspec <spec_filename>

## Support

Feel free to log issues against this client through GitHub.  We also have an active developer community on Stack Overflow, search the [DocuSignAPI](http://stackoverflow.com/questions/tagged/docusignapi) tag.

## License

The DocuSign Ruby Client is licensed under the following [License](LICENSE).

[rubygems-image]: https://img.shields.io/gem/v/docusign_esign.svg?style=flat
[rubygems-url]: https://rubygems.org/gems/docusign_esign
[downloads-image]: https://img.shields.io/gem/dt/docusign_esign.svg?style=flat
[downloads-url]: https://rubygems.org/gems/docusign_esign
[travis-image]: https://img.shields.io/travis/docusign/docusign-ruby-client.svg?style=flat
[travis-url]: https://travis-ci.org/docusign/docusign-ruby-client
