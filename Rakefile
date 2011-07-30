require 'bundler'
require 'rspec/core/rake_task'

task :default => [:rspec_tests]

RSpec::Core::RakeTask.new(:rspec_tests) do |t|
  t.rspec_opts = ['--format', 'documentation']
end

Bundler::GemHelper.install_tasks
