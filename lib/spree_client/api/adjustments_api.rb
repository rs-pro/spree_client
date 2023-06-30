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
  class AdjustmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return a list of Adjustments
    # Returns a list of Adjustments
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @option opts [String] :filter_order_id 
    # @return [ResourcesList]
    def adjustments_list(opts = {})
      data, _status_code, _headers = adjustments_list_with_http_info(opts)
      data
    end

    # Return a list of Adjustments
    # Returns a list of Adjustments
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @option opts [String] :filter_order_id 
    # @return [Array<(ResourcesList, Integer, Hash)>] ResourcesList data, response status code and response headers
    def adjustments_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdjustmentsApi.adjustments_list ...'
      end
      # resource path
      local_var_path = '/api/v2/platform/adjustments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'filter[order_id]'] = opts[:'filter_order_id'] if !opts[:'filter_order_id'].nil?

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
        :operation => :"AdjustmentsApi.adjustments_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdjustmentsApi#adjustments_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an Adjustment
    # Creates an Adjustment
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @option opts [CreateAdjustmentParams] :create_adjustment_params 
    # @return [Resource]
    def create_adjustment(opts = {})
      data, _status_code, _headers = create_adjustment_with_http_info(opts)
      data
    end

    # Create an Adjustment
    # Creates an Adjustment
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @option opts [CreateAdjustmentParams] :create_adjustment_params 
    # @return [Array<(Resource, Integer, Hash)>] Resource data, response status code and response headers
    def create_adjustment_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdjustmentsApi.create_adjustment ...'
      end
      # resource path
      local_var_path = '/api/v2/platform/adjustments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_adjustment_params'])

      # return_type
      return_type = opts[:debug_return_type] || 'Resource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"AdjustmentsApi.create_adjustment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdjustmentsApi#create_adjustment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an Adjustment
    # Deletes an Adjustment
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_adjustment(id, opts = {})
      delete_adjustment_with_http_info(id, opts)
      nil
    end

    # Delete an Adjustment
    # Deletes an Adjustment
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_adjustment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdjustmentsApi.delete_adjustment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AdjustmentsApi.delete_adjustment"
      end
      # resource path
      local_var_path = '/api/v2/platform/adjustments/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"AdjustmentsApi.delete_adjustment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdjustmentsApi#delete_adjustment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return an Adjustment
    # Returns an Adjustment
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @return [Resource]
    def show_adjustment(id, opts = {})
      data, _status_code, _headers = show_adjustment_with_http_info(id, opts)
      data
    end

    # Return an Adjustment
    # Returns an Adjustment
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @return [Array<(Resource, Integer, Hash)>] Resource data, response status code and response headers
    def show_adjustment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdjustmentsApi.show_adjustment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AdjustmentsApi.show_adjustment"
      end
      # resource path
      local_var_path = '/api/v2/platform/adjustments/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"AdjustmentsApi.show_adjustment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdjustmentsApi#show_adjustment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an Adjustment
    # Updates an Adjustment
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @option opts [UpdateAdjustmentParams] :update_adjustment_params 
    # @return [Resource]
    def update_adjustment(id, opts = {})
      data, _status_code, _headers = update_adjustment_with_http_info(id, opts)
      data
    end

    # Update an Adjustment
    # Updates an Adjustment
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @option opts [UpdateAdjustmentParams] :update_adjustment_params 
    # @return [Array<(Resource, Integer, Hash)>] Resource data, response status code and response headers
    def update_adjustment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdjustmentsApi.update_adjustment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AdjustmentsApi.update_adjustment"
      end
      # resource path
      local_var_path = '/api/v2/platform/adjustments/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_adjustment_params'])

      # return_type
      return_type = opts[:debug_return_type] || 'Resource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"AdjustmentsApi.update_adjustment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdjustmentsApi#update_adjustment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end