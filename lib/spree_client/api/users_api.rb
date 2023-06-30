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
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a User
    # Creates a User
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @option opts [CreateUserParams] :create_user_params 
    # @return [Resource]
    def create_user(opts = {})
      data, _status_code, _headers = create_user_with_http_info(opts)
      data
    end

    # Create a User
    # Creates a User
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @option opts [CreateUserParams] :create_user_params 
    # @return [Array<(Resource, Integer, Hash)>] Resource data, response status code and response headers
    def create_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.create_user ...'
      end
      # resource path
      local_var_path = '/api/v2/platform/users'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_user_params'])

      # return_type
      return_type = opts[:debug_return_type] || 'Resource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"UsersApi.create_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a User
    # Deletes a User
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_user(id, opts = {})
      delete_user_with_http_info(id, opts)
      nil
    end

    # Delete a User
    # Deletes a User
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.delete_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.delete_user"
      end
      # resource path
      local_var_path = '/api/v2/platform/users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"UsersApi.delete_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#delete_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a User
    # Returns a User
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @return [Resource]
    def show_user(id, opts = {})
      data, _status_code, _headers = show_user_with_http_info(id, opts)
      data
    end

    # Return a User
    # Returns a User
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @return [Array<(Resource, Integer, Hash)>] Resource data, response status code and response headers
    def show_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.show_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.show_user"
      end
      # resource path
      local_var_path = '/api/v2/platform/users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"UsersApi.show_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#show_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a User
    # Updates a User
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @option opts [UpdateUserParams] :update_user_params 
    # @return [Resource]
    def update_user(id, opts = {})
      data, _status_code, _headers = update_user_with_http_info(id, opts)
      data
    end

    # Update a User
    # Updates a User
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @option opts [UpdateUserParams] :update_user_params 
    # @return [Array<(Resource, Integer, Hash)>] Resource data, response status code and response headers
    def update_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.update_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.update_user"
      end
      # resource path
      local_var_path = '/api/v2/platform/users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_user_params'])

      # return_type
      return_type = opts[:debug_return_type] || 'Resource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"UsersApi.update_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a list of Users
    # Returns a list of Users
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @option opts [String] :filter_user_id_eq 
    # @option opts [String] :filter_email_cont 
    # @return [ResourcesList]
    def users_list(opts = {})
      data, _status_code, _headers = users_list_with_http_info(opts)
      data
    end

    # Return a list of Users
    # Returns a list of Users
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :include Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt;
    # @option opts [String] :filter_user_id_eq 
    # @option opts [String] :filter_email_cont 
    # @return [Array<(ResourcesList, Integer, Hash)>] ResourcesList data, response status code and response headers
    def users_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_list ...'
      end
      # resource path
      local_var_path = '/api/v2/platform/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'filter[user_id_eq]'] = opts[:'filter_user_id_eq'] if !opts[:'filter_user_id_eq'].nil?
      query_params[:'filter[email_cont]'] = opts[:'filter_email_cont'] if !opts[:'filter_email_cont'].nil?

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
        :operation => :"UsersApi.users_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
