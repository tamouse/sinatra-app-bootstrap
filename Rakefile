require 'rspec/core/rake_task'
require 'cucumber/rake/task'

$:.unshift(File.dirname(__FILE__))

task :default => [:spec,:features]

ENV['COVERAGE'] = "true"

desc "run specs"
RSpec::Core::RakeTask.new(:spec)

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format pretty"
end
