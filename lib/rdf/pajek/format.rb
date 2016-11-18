# frozen_string_literal: true
module RDF
  module Pajek
    ##
    # A Pajek format for RDF.rb
    #
    # @see http://vlado.fmf.uni-lj.si/pub/networks/pajek/doc/pajekman.pdf
    class Format < RDF::Format
      content_type     'text/x.pajek', extension: :paj
      content_encoding 'ascii'

      writer { RDF::Pajek::Writer }

      def self.name
        'Pajek Net Format'
      end
    end
  end
end
