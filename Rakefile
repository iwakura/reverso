require 'rubygems'
require 'rake/testtask'

Rake::TestTask.new(:test) do |test|
  test.test_files = FileList['test/test_*.rb']
  test.verbose = false
  test.warning = true
end

task :default => :test

