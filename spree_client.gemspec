# -*- encoding: utf-8 -*-

=begin
#Platform API

#Spree Platform API

The version of the OpenAPI document: v2
Contact: we@sparksolutions.co
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0-SNAPSHOT

=end

$:.push File.expand_path("../lib", __FILE__)
require "spree_client/version"

Gem::Specification.new do |s|
  s.name        = "spree_client"
  s.version     = SpreeClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["glebtv"]
  s.email       = ["glebtv@gmail.com"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "Platform API Ruby Gem"
  s.description = "Spree Platform API"
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.7"

  s.add_runtime_dependency 'faraday', '>= 1.0.1', '< 3.0'
  s.add_runtime_dependency 'faraday-multipart'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
