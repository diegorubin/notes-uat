require 'rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'yaml'
require 'httparty'
require 'pry'
require 'json'
require 'jsonpath'
require_relative 'lib/serializer/utilities'

YAML::ENGINE.yamler= 'syck'

Capybara.default_driver = :selenium
Capybara.run_server = false

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.javascript_driver = :chrome

Capybara.page.driver.browser.manage.window.maximize

