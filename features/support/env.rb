
require 'uri'
require 'net/http'
require "capybara"
require "capybara/cucumber"
require "rspec"
require 'capybara/dsl'

include RSpec::Matchers
 	
Capybara.configure do |capybara|
	capybara.register_driver :selenium_ff do |app|
	capybara::Selenium::Driver.new(app, :browser => :firefox)
end

capybara.register_driver :selenium_ie do |app|
	Capybara::Selenium::Driver.new(app, :browser => :ie)
end

capybara.default_driver = :selenium_ff #set the browser you want to run the test on
	capybara.run_server = false
end

RSpec.configure do |config|
	config.include Capybara::DSL
end





