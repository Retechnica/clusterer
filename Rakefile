# The MIT License
# Copyright (c) 2006 Surendra K Singhi <ssinghi AT kreeti DOT com>

require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "tests"
  t.test_files = FileList['tests/*_test.rb']
  t.verbose    = true
  t.ruby_opts  = ['-rubygems']
end
