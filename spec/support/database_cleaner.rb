RSpec.configure do |config|

     config.before(:all) do
          DatabaseCleaner.clean_with(:truncation)
     end

     config.before(:each) do
          DatabaseCleaner[:postgresql].strategy = :transaction
     end

     config.before(:each, :js => true) do
          DatabaseCleaner.strategy = :truncation
     end

     config.before(:all) do
          DatabaseCleaner[:postgresql].start
     end

     config.after(:each) do
          DatabaseCleaner.clean
     end
end
