#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.version     = File.read('VERSION').chomp
  s.date        = File.mtime('VERSION').strftime('%Y-%m-%d')

  s.name        = 'rdf-pajek'

  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Tom Johnson']
  s.homepage    = 'https://github.com/no-reply/rdf-pajek'
  s.email       = 'n0reply@uw.edu'
  s.summary     = 'An RDF::Writer for dumping RDF to Pajek'
  s.description = 'An RDF::Writer for dumping RDF to Pajek.'
  s.license     = 'Unlicense'

  s.required_ruby_version = '>= 2.2.2'

  s.files      = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {spec}/*`.split("\n")

  s.add_dependency             'rdf', '~>2.0'

  s.add_development_dependency 'pry'
  s.add_development_dependency 'rdf-spec'
end
