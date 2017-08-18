require "test_bench/cli"

# Encapsulates logic to start test suite
class TestRunner
  # Invokes test suite on `tests` directory
  def self.call(argv=nil)
    argv ||= ARGV

    tests = File.expand_path("../tests", __FILE__)
    $LOAD_PATH.unshift(tests) unless $LOAD_PATH.include?(tests)

    TestBench::CLI.(
      argv,
      exclude_pattern: /test_helper\.rb/,
      tests_directory: tests
    ) || exit(1)
  end
end
