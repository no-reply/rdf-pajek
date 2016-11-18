require 'spec_helper'
require 'rdf/spec/format'

describe RDF::Pajek::Format do
  it_behaves_like 'an RDF::Format' do
    let(:format_class) { described_class }
  end

  describe '#content_encoding' do
    it 'is ascii encoded' do
      expect(described_class.content_encoding).to eq :ascii
    end
  end

  describe '#content_type' do
    it 'defines the content type' do
      expect(described_class.content_type)
        .to contain_exactly('text/x.pajek')
    end
  end

  describe '#reader' do
    it 'has no reader' do
      expect(described_class.reader).to be_nil
    end
  end

  describe '#writer' do
    it 'has a writer' do
      expect(described_class.writer).to eq RDF::Pajek::Writer
    end
  end
end
