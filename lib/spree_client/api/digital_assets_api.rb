=begin
#Platform API

#Spree Platform API

The version of the OpenAPI document: v2
Contact: we@sparksolutions.co
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0-SNAPSHOT

=end

require 'cgi'

module SpreeClient
  class DigitalAssetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Digital Asset
    # Creates a Digital Asset
    # @param digital_attachment [File] 
    # @param digital_variant_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @return [Resource]
    def create_digital(digital_attachment, digital_variant_id, opts = {})
      data, _status_code, _headers = create_digital_with_http_info(digital_attachment, digital_variant_id, opts)
      data
    end

    # Create a Digital Asset
    # Creates a Digital Asset
    # @param digital_attachment [File] 
    # @param digital_variant_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @return [Array<(Resource, Integer, Hash)>] Resource data, response status code and response headers
    def create_digital_with_http_info(digital_attachment, digital_variant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DigitalAssetsApi.create_digital ...'
      end
      # verify the required parameter 'digital_attachment' is set
      if @api_client.config.client_side_validation && digital_attachment.nil?
        fail ArgumentError, "Missing the required parameter 'digital_attachment' when calling DigitalAssetsApi.create_digital"
      end
      # verify the required parameter 'digital_variant_id' is set
      if @api_client.config.client_side_validation && digital_variant_id.nil?
        fail ArgumentError, "Missing the required parameter 'digital_variant_id' when calling DigitalAssetsApi.create_digital"
      end
      # resource path
      local_var_path = '/api/v2/platform/digitals'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['digital[attachment]'] = digital_attachment
      form_params['digital[variant_id]'] = digital_variant_id

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Resource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"DigitalAssetsApi.create_digital",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DigitalAssetsApi#create_digital\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Digital Asset
    # Deletes a Digital Asset
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_digital(id, opts = {})
      delete_digital_with_http_info(id, opts)
      nil
    end

    # Delete a Digital Asset
    # Deletes a Digital Asset
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_digital_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DigitalAssetsApi.delete_digital ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DigitalAssetsApi.delete_digital"
      end
      # resource path
      local_var_path = '/api/v2/platform/digitals/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"DigitalAssetsApi.delete_digital",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DigitalAssetsApi#delete_digital\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a list of Digital Assets
    # Returns a list of Digital Assets
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @return [ResourcesList]
    def digitals_list(opts = {})
      data, _status_code, _headers = digitals_list_with_http_info(opts)
      data
    end

    # Return a list of Digital Assets
    # Returns a list of Digital Assets
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @return [Array<(ResourcesList, Integer, Hash)>] ResourcesList data, response status code and response headers
    def digitals_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DigitalAssetsApi.digitals_list ...'
      end
      # resource path
      local_var_path = '/api/v2/platform/digitals'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResourcesList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"DigitalAssetsApi.digitals_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DigitalAssetsApi#digitals_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a Digital Asset
    # Returns a Digital Asset
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @return [Resource]
    def show_digital(id, opts = {})
      data, _status_code, _headers = show_digital_with_http_info(id, opts)
      data
    end

    # Return a Digital Asset
    # Returns a Digital Asset
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @return [Array<(Resource, Integer, Hash)>] Resource data, response status code and response headers
    def show_digital_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DigitalAssetsApi.show_digital ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DigitalAssetsApi.show_digital"
      end
      # resource path
      local_var_path = '/api/v2/platform/digitals/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Resource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"DigitalAssetsApi.show_digital",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DigitalAssetsApi#show_digital\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Digital Asset
    # Updates a Digital Asset
    # @param id [String] 
    # @param digital_attachment [File] 
    # @param digital_variant_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @return [Resource]
    def update_digital(id, digital_attachment, digital_variant_id, opts = {})
      data, _status_code, _headers = update_digital_with_http_info(id, digital_attachment, digital_variant_id, opts)
      data
    end

    # Update a Digital Asset
    # Updates a Digital Asset
    # @param id [String] 
    # @param digital_attachment [File] 
    # @param digital_variant_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @return [Array<(Resource, Integer, Hash)>] Resource data, response status code and response headers
    def update_digital_with_http_info(id, digital_attachment, digital_variant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DigitalAssetsApi.update_digital ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DigitalAssetsApi.update_digital"
      end
      # verify the required parameter 'digital_attachment' is set
      if @api_client.config.client_side_validation && digital_attachment.nil?
        fail ArgumentError, "Missing the required parameter 'digital_attachment' when calling DigitalAssetsApi.update_digital"
      end
      # verify the required parameter 'digital_variant_id' is set
      if @api_client.config.client_side_validation && digital_variant_id.nil?
        fail ArgumentError, "Missing the required parameter 'digital_variant_id' when calling DigitalAssetsApi.update_digital"
      end
      # resource path
      local_var_path = '/api/v2/platform/digitals/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['digital[attachment]'] = digital_attachment
      form_params['digital[variant_id]'] = digital_variant_id

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Resource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"DigitalAssetsApi.update_digital",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DigitalAssetsApi#update_digital\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end