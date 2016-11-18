module RDF::Pajek
  ##
  # A Pajek
  # @see http://vlado.fmf.uni-lj.si/pub/networks/pajek/doc/pajekman.pdf
  class Format < RDF::Format
    content_type     'text/x.pajek', extension: :paj
    content_encoding 'ascii'

    writer { RDF::Pajek::Writer }
  end
end
