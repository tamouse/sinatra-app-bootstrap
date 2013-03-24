=begin

env.rb

*Author*::    Tamara Temple <tamara@tamaratemple.com>
*Copyright*:: Tamara Temple Web Development
*License*::   MIT
*Since*::     2013-03-24T14:46:44

== Description

Sets up the environment for cucumber testing.

=end


if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start do
    add_filter "/features/"
  end
end

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = App              # Using the modular form of Sinatra, set to the class of your application

World do
  include Capybara::DSL         # You can probably ignore the warning?
  include RSpec::Expectations
  include RSpec::Matchers
end
