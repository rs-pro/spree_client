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

# Unit tests for SpreeClient::CreatePromotionActionParamsPromotionAction
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SpreeClient::CreatePromotionActionParamsPromotionAction do
  let(:instance) { SpreeClient::CreatePromotionActionParamsPromotionAction.new }

  describe 'test an instance of CreatePromotionActionParamsPromotionAction' do
    it 'should create an instance of CreatePromotionActionParamsPromotionAction' do
      expect(instance).to be_instance_of(SpreeClient::CreatePromotionActionParamsPromotionAction)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Spree::Promotion::Actions::CreateAdjustment", "Spree::Promotion::Actions::CreateItemAdjustments", "Spree::Promotion::Actions::CreateLineItems", "Spree::Promotion::Actions::FreeShipping"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "promotion_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end