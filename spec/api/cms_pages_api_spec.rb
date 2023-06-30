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

# Unit tests for SpreeClient::CMSPagesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CMSPagesApi' do
  before do
    # run before each test
    @api_instance = SpreeClient::CMSPagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CMSPagesApi' do
    it 'should create an instance of CMSPagesApi' do
      expect(@api_instance).to be_instance_of(SpreeClient::CMSPagesApi)
    end
  end

  # unit tests for cms_pages_list
  # Return a list of CMS Pages
  # Returns a list of CMS Pages
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @option opts [String] :filter_type_eq 
  # @option opts [String] :filter_locale_eq 
  # @option opts [String] :filter_title_cont 
  # @return [ResourcesList]
  describe 'cms_pages_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_cms_page
  # Create a CMS Page
  # Creates a CMS Page
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @option opts [CreateCmsPageRequest] :create_cms_page_request 
  # @return [Resource]
  describe 'create_cms_page test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_cms_page
  # Delete a CMS Page
  # Deletes a CMS Page
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_cms_page test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_cms_page
  # Return a CMS Page
  # Returns a CMS Page
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @return [Resource]
  describe 'show_cms_page test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_cms_page
  # Update a CMS Page
  # Updates a CMS Page
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
  # @option opts [UpdateCmsPageRequest] :update_cms_page_request 
  # @return [Resource]
  describe 'update_cms_page test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end