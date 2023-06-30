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

# Unit tests for SpreeClient::DigitalAssetsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DigitalAssetsApi' do
  before do
    # run before each test
    @api_instance = SpreeClient::DigitalAssetsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DigitalAssetsApi' do
    it 'should create an instance of DigitalAssetsApi' do
      expect(@api_instance).to be_instance_of(SpreeClient::DigitalAssetsApi)
    end
  end

  # unit tests for create_digital
  # Create a Digital Asset
  # Creates a Digital Asset
  # @param digital_attachment 
  # @param digital_variant_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @return [Resource]
  describe 'create_digital test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_digital
  # Delete a Digital Asset
  # Deletes a Digital Asset
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_digital test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for digitals_list
  # Return a list of Digital Assets
  # Returns a list of Digital Assets
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @return [ResourcesList]
  describe 'digitals_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_digital
  # Return a Digital Asset
  # Returns a Digital Asset
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @return [Resource]
  describe 'show_digital test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_digital
  # Update a Digital Asset
  # Updates a Digital Asset
  # @param id 
  # @param digital_attachment 
  # @param digital_variant_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @return [Resource]
  describe 'update_digital test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
