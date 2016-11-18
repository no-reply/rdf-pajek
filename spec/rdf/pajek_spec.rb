require 'spec_helper'

describe RDF::Pajek do
  describe 'versioning' do
    let(:semver_regex) do
      /^(?:0|[1-9]\d*)\.(?:0|[1-9]\d*)\.(?:0|[1-9]\d*)
       (?:-[\da-z\-]+(?:\.[\da-z\-]+)*)?
       (?:-[\da-z\-]+(?:\.[\da-z\-]+)*)?$
      /x
    end

    it 'has a version' do
      expect(described_class::VERSION).to match semver_regex
    end

    it 'has a stringable version' do
      expect(described_class::VERSION.to_s).to match semver_regex
    end

    it 'has a version array' do
      expect(described_class::VERSION.to_a)
        .to contain_exactly(an_instance_of(String),
                            an_instance_of(String),
                            an_instance_of(String))
    end
  end
end
