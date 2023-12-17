# test/test_helper.rb

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "database_cleaner"

DatabaseCleaner.strategy = :transaction

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Run setup at the beginning of each test
  setup do
    DatabaseCleaner.start
  end

  # Run cleanup at the end of each test
  teardown do
    DatabaseCleaner.clean
  end

  # Add more helper methods to be used by all tests here...
end


#ENV["RAILS_ENV"] ||= "test"
#require_relative "../config/environment"
#require "rails/test_help"

#class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
 # parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #fixtures :all



  # Add more helper methods to be used by all tests here...
#end
