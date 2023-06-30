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

# Unit tests for SpreeClient::CreateMenuParamsMenu
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SpreeClient::CreateMenuParamsMenu do
  let(:instance) { SpreeClient::CreateMenuParamsMenu.new }

  describe 'test an instance of CreateMenuParamsMenu' do
    it 'should create an instance of CreateMenuParamsMenu' do
      expect(instance).to be_instance_of(SpreeClient::CreateMenuParamsMenu)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "location"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["header", "footer"])
      # validator.allowable_values.each do |value|
      #   expect { instance.location = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "locale"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
