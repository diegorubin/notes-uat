require 'rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'yaml'
require 'httparty'
require 'pry'
require 'pry-byebug'
require 'json'
require 'json-schema'

Dir.entries('features/support/repository').each do |entry|
  next if entry =~ /\.\.?/
  require_relative "features/support/repository/#{entry}"
end

YAML::ENGINE.yamler= 'syck'

Capybara.default_driver = :selenium
Capybara.run_server = false

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.javascript_driver = :chrome

Capybara.page.driver.browser.manage.window.maximize

