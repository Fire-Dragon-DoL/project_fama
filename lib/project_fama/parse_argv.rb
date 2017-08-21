require "project_fama/configure"
require "optparse"

module ProjectFama
  # Converts command line arguments into {::ProjectFama} settings
  class ParseARGV
    configure :parse_argv

    def call(argv)
      nil
    end

    def self.call(argv)
      instance = new
      instance.(argv)
    end

    def self.build
      new
    end

    private

    def option_parser
      @option_parser ||= OptionParser.new
    end
  end
end
