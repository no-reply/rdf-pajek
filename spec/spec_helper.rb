require 'bundler/setup'

require 'rdf'
require 'rdf/spec'
require 'rdf/spec/matchers'

require 'rdf/pajek'

RSpec.configure do |config|
  config.include(RDF::Spec::Matchers)
end

def fixture_path(filename)
  File.join(File.dirname(__FILE__), 'data', filename)
end

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
