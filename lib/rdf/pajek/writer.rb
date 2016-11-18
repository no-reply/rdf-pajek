require 'rdf/pajek/format'

module RDF
  module Pajek
    ##
    # A Pajek writer for RDF.rb
    #
    # @see http://vlado.fmf.uni-lj.si/pub/networks/pajek/doc/pajekman.pdf
    class Writer < RDF::Writer
      format RDF::Pajek::Format

      ##
      # Initialize the writer
      def initialize(output = $stdout, options = {}, &block)
        options = { validate: true }.merge(options)
        super
      end

      ##
      # @see RDF::Writer#write_triple
      def write_triple(subject, predicate, object)
        puts 'blah'
      end
    end
  end
end
