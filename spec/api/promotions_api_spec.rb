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

# Unit tests for SpreeClient::PromotionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PromotionsApi' do
  before do
    # run before each test
    @api_instance = SpreeClient::PromotionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PromotionsApi' do
    it 'should create an instance of PromotionsApi' do
      expect(@api_instance).to be_instance_of(SpreeClient::PromotionsApi)
    end
  end

  # unit tests for create_promotion
  # Create a Promotion
  # Creates a Promotion
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @option opts [CreatePromotionParams] :create_promotion_params 
  # @return [Resource]
  describe 'create_promotion test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_promotion
  # Delete a Promotion
  # Deletes a Promotion
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_promotion test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for promotions_list
  # Return a list of Promotions
  # Returns a list of Promotions
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @option opts [String] :filter_code_eq 
  # @option opts [String] :filter_name_cont 
  # @return [ResourcesList]
  describe 'promotions_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_promotion
  # Return a Promotion
  # Returns a Promotion
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @return [Resource]
  describe 'show_promotion test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_promotion
  # Update a Promotion
  # Updates a Promotion
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @option opts [UpdatePromotionRequest] :update_promotion_request 
  # @return [Resource]
  describe 'update_promotion test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end