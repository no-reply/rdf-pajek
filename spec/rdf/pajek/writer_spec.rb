require 'spec_helper'
require 'rdf/spec/writer'

describe RDF::Pajek::Writer do
  let(:logger)       { RDF::Spec.logger }
  let(:writer_class) { described_class }
  let(:writer)       { described_class.new }

  subject { writer }

  it_behaves_like 'an RDF::Writer'

  it 'defaults validation to be true' do
    expect(subject).to be_validate
  end

  it 'allows validation to be false' do
    expect(described_class.new($stdout, validate: false)).not_to be_validate
  end

  context "Writing a Graph" do
    let(:graph) do
      g = RDF::Graph.new
      g << [RDF::URI('s'), RDF::URI('p'), RDF::URI('o1')]
      g << [RDF::URI('s'), RDF::URI('p'), RDF::URI('o2'), RDF::URI('c')]
      g
    end

    it '#insert' do
      expect { writer_class.new($stdout, validate: false).insert(graph) }
        .to write_each("*Vertices 3\n", 
                       "1 \"s\"\n", 
                       "2 \"o1\"\n", 
                       "3 \"o2\"\n",
                       "*Arcs\n",
                       "1 2 1 l \"p\"\n",
                       "1 3 1 l \"p\"\n")
    end
  end
end
