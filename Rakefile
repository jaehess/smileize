require 'rubygems'
require 'rake'
require 'rake/testtask'

desc 'Run tests'
task :default => :test
Rake::TestTask.new('test') do |t|
  t.libs << 'test'
  t.pattern = 'test/*/*_test.rb'
end