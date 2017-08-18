# ProjectFama [![Build Status][test-badge]][test-link] [![Code Climate][gpa-badge]][gpa-link] [![Test Coverage][coverage-badge]][coverage-link]

Command line utility to extract a report of Github project, tracking progress
based on estimates, resolved tickets and checkboxes marked

> Fama is latin for "report"

## Installation

Run:

    $ gem install project_fama

And then execute:

    $ fama --token=GITHUB_TOKEN --path="$HOME/Desktop" GITHUB_PROJECT_URL

## Usage

Running `fama` will create a directory containing an html file which is a
report for your project, informing you of the progress.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Fire-Dragon-DoL/project_fama.

## License

The gem is available as open source under the terms of the [GPL-3.0 License](https://opensource.org/licenses/GPL-3.0).

[test-badge]: https://travis-ci.org/Fire-Dragon-DoL/project_fama.svg?branch=master
[test-link]: https://travis-ci.org/Fire-Dragon-DoL/project_fama
[gpa-badge]: https://codeclimate.com/github/Fire-Dragon-DoL/project_fama/badges/gpa.svg
[gpa-link]: https://codeclimate.com/github/Fire-Dragon-DoL/project_fama
[coverage-badge]: https://codeclimate.com/github/Fire-Dragon-DoL/project_fama/badges/coverage.svg
[coverage-link]: https://codeclimate.com/github/Fire-Dragon-DoL/project_fama/coverage
