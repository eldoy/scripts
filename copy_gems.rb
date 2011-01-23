#!/usr/bin/env ruby
gems = %w(celerity culerity nokogiri ffi childprocess json_pure rubyzip selenium-webdriver xpath capybara configuration json gherkin term-ansicolor cucumber cucumber-rails database_cleaner launchy)
gems.each do |gem|
  system "cd `bundle show #{gem}` && gem build #{gem}.gemspec && mv *.gem /Users/vidar/Code"
end 

