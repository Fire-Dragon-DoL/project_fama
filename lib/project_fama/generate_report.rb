require "project_fama/configure"
require "optparse"

module ProjectFama
  # Creates a directory with report file as html and raw github request as JSON
  class GenerateReport
    configure :generate_report

    def call(params)
      nil
    end

    def self.call(params)
      instance = new
      instance.(params)
    end

    def self.build
      new
    end
  end
end
