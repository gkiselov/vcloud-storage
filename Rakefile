require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |task|
  # Set a bogus Fog credential, otherwise it's possible for the unit
  # tests to accidentially run (and succeed against!) an actual
  # environment, if Fog connection is not stubbed correctly.
  ENV['FOG_CREDENTIAL'] = 'random_nonsense_owiejfoweijf'
  ENV['COVERAGE'] = 'true'
  task.pattern = FileList['spec/vcloud/**/*_spec.rb']
end

task :default => [:rubocop, :spec]

RSpec::Core::RakeTask.new('integration') do |t|
  t.pattern = FileList['spec/integration/**/*_spec.rb']
end

require 'rubocop/rake_task'
RuboCop::RakeTask.new(:rubocop) do |task|
  task.options = ['--lint']
end
