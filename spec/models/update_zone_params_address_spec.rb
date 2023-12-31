=begin
#Platform API

#Spree Platform API

The version of the OpenAPI document: v2
Contact: we@sparksolutions.co
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SpreeClient::UpdateZoneParamsAddress
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SpreeClient::UpdateZoneParamsAddress do
  let(:instance) { SpreeClient::UpdateZoneParamsAddress.new }

  describe 'test an instance of UpdateZoneParamsAddress' do
    it 'should create an instance of UpdateZoneParamsAddress' do
      expect(instance).to be_instance_of(SpreeClient::UpdateZoneParamsAddress)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "default_tax"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "kind"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["state", "country"])
      # validator.allowable_values.each do |value|
      #   expect { instance.kind = value }.not_to raise_error
      # end
    end
  end

end
