require "test_bench/activate"
require "simplecov"
require "pry-byebug"

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

SimpleCov.command_name "Unit tests" if ENV["COVERAGE"]
