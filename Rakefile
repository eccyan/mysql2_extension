require 'rubygems'
require 'bundler/setup'
require "bundler/gem_tasks"

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

namespace :db do
  task :create do
    require File.expand_path('../spec/spec_helper.rb', __FILE__)
    CreateAllTables.up
  end
  task :drop do
    require File.expand_path('../spec/spec_helper.rb', __FILE__)
    CreateAllTables.down
  end
end

namespace :spec do

  desc "boot console with spec helpers" do
    task :console do
      require File.expand_path('../spec/spec_helper.rb', __FILE__)
      require 'pry'
      ARGV.clear
    end
  end

end
