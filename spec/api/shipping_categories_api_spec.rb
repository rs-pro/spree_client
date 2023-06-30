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

# Unit tests for SpreeClient::ShippingCategoriesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ShippingCategoriesApi' do
  before do
    # run before each test
    @api_instance = SpreeClient::ShippingCategoriesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShippingCategoriesApi' do
    it 'should create an instance of ShippingCategoriesApi' do
      expect(@api_instance).to be_instance_of(SpreeClient::ShippingCategoriesApi)
    end
  end

  # unit tests for create_shipping_category
  # Create a Shipping Category
  # Creates a Shipping Category
  # @param [Hash] opts the optional parameters
  # @option opts [CreateShippingCategoryParams] :create_shipping_category_params 
  # @return [Resource]
  describe 'create_shipping_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_shipping_category
  # Delete a Shipping Category
  # Deletes a Shipping Category
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_shipping_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for shipping_categories_list
  # Return a list of Shipping Categories
  # Returns a list of Shipping Categories
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :filter_name_i_cont 
  # @return [ResourcesList]
  describe 'shipping_categories_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_shipping_category
  # Return a Shipping Category
  # Returns a Shipping Category
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Resource]
  describe 'show_shipping_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_shipping_category
  # Update a Shipping Category
  # Updates a Shipping Category
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateShippingCategoryParams] :update_shipping_category_params 
  # @return [Resource]
  describe 'update_shipping_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end