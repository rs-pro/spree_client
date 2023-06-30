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

# Unit tests for SpreeClient::PromotionCategoriesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PromotionCategoriesApi' do
  before do
    # run before each test
    @api_instance = SpreeClient::PromotionCategoriesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PromotionCategoriesApi' do
    it 'should create an instance of PromotionCategoriesApi' do
      expect(@api_instance).to be_instance_of(SpreeClient::PromotionCategoriesApi)
    end
  end

  # unit tests for create_promotion_category
  # Create a Promotion Category
  # Creates a Promotion Category
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @option opts [CreatePromotionCategoryParams] :create_promotion_category_params 
  # @return [Resource]
  describe 'create_promotion_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_promotion_category
  # Delete a Promotion Category
  # Deletes a Promotion Category
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_promotion_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for promotion_categories_list
  # Return a list of Promotion Categories
  # Returns a list of Promotion Categories
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @option opts [String] :filter_code_eq 
  # @option opts [String] :filter_name_eq 
  # @return [ResourcesList]
  describe 'promotion_categories_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_promotion_category
  # Return a Promotion Category
  # Returns a Promotion Category
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @return [Resource]
  describe 'show_promotion_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_promotion_category
  # Update a Promotion Category
  # Updates a Promotion Category
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @option opts [UpdatePromotionCategoryParams] :update_promotion_category_params 
  # @return [Resource]
  describe 'update_promotion_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
