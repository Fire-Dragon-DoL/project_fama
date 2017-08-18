require "bundler/gem_tasks"
require "license_finder"
require "rubocop/rake_task"
require "bundler/audit/task"

# Required or rake doesn't clear first argument (task name)
ARGV.pop

Bundler::Audit::Task.new

RuboCop::RakeTask.new(:rubocop) do |config|
  config.options = %w[--display-cop-names --parallel]
end

desc "Run test suite"
task :test do
  require_relative "./test_runner"

  TestRunner.()
end

desc "Run license_finder to check used licenses"
task :legalize do
  LicenseFinder::CLI::Main.start
end

desc "Run rubocop"
task lint: [:rubocop]

desc "Run bundler-audit"
task audit: [:"bundle:audit"]

desc "Run all sanity checks on codebase"
task sanitize: [:legalize, :audit, :lint, :test]

task default: [:legalize, :audit, :test]
