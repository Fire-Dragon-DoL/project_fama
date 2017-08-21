# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "project_fama/version"

Gem::Specification.new do |spec|
  spec.name          = "project_fama"
  spec.version       = ProjectFama::VERSION
  spec.authors       = ["Fire-Dragon-DoL"]
  spec.email         = ["francesco.belladonna@gmail.com"]

  spec.summary       = %q{Command line utility to extract a progress report of
                          Github project}
  spec.description   = %q{Command line utility to extract a report of Github
                          project, tracking progress based on estimates,
                          resolved tickets and checkboxes marked}
  spec.homepage      = "https://github.com/Fire-Dragon-DoL/project_fama"
  spec.license       = "GPL-3.0"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "evt-configure",   ">= 0.1.2.5"
  spec.add_runtime_dependency "evt-dependency",  ">= 0.1.0.4"
  spec.add_runtime_dependency "evt-initializer", ">= 0.1.0.2"
  spec.add_runtime_dependency "evt-telemetry",   ">= 0.3.1.0"
  spec.add_runtime_dependency "naught",          ">= 1.1.0"
  spec.add_runtime_dependency "thor",            ">= 0.20.0"

  spec.add_development_dependency "bundler-audit",             ">= 0.6"
  spec.add_development_dependency "bundler",                   ">= 1.15"
  spec.add_development_dependency "codeclimate-test-reporter", ">= 1.0"
  spec.add_development_dependency "rake",                      ">= 12.0"
  spec.add_development_dependency "rubocop",                   "~> 0.49.1"
  spec.add_development_dependency "test_bench",                ">= 1.3"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "license_finder"
  spec.add_development_dependency "pry-byebug"
end
