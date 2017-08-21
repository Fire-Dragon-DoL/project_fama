require "project_fama/dependency"
require "project_fama/initializer"
require "project_fama/parse_argv"
require "project_fama/generate_report"

module ProjectFama
  # Parses command line arguments and passes those to {Runner}
  class CLI
    dependency :parse_argv, ParseARGV
    dependency :generate_report, GenerateReport

    initializer :argv

    # @return [Void]
    def call
      params = parse_argv.(argv)
      generate_report.(params)
    end

    # @return [Void]
    def self.call(argv)
      instance = new(argv)
      instance.()
    end
  end
end
