module RDF
  module Pajek
    ##
    # The current version
    # @see semver.org
    module VERSION
      FILE = File.expand_path('../../../../VERSION', __FILE__)
      MAJOR, MINOR, TINY = File.read(FILE).chomp.split('.')
      STRING = [MAJOR, MINOR, TINY].join('.').freeze

      ##
      # Explicit string coercion
      #
      # @return [String]
      def self.to_s
        STRING
      end

      ##
      # Implict string coercion
      #
      # @return [String]
      def self.to_str
        STRING
      end

      ##
      # @return [Array<String>]
      def self.to_a
        [MAJOR, MINOR, TINY].compact
      end
    end
  end
end
