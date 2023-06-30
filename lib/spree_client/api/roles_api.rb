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
  class RolesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Role
    # Creates a Role
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRoleParams] :create_role_params 
    # @return [Resource]
    def create_role(opts = {})
      data, _status_code, _headers = create_role_with_http_info(opts)
      data
    end

    # Create a Role
    # Creates a Role
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRoleParams] :create_role_params 
    # @return [Array<(Resource, Integer, Hash)>] Resource data, response status code and response headers
    def create_role_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.create_role ...'
      end
      # resource path
      local_var_path = '/api/v2/platform/roles'

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_role_params'])

      # return_type
      return_type = opts[:debug_return_type] || 'Resource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"RolesApi.create_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#create_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Role
    # Deletes a Role
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_role(id, opts = {})
      delete_role_with_http_info(id, opts)
      nil
    end

    # Delete a Role
    # Deletes a Role
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_role_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.delete_role ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RolesApi.delete_role"
      end
      # resource path
      local_var_path = '/api/v2/platform/roles/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"RolesApi.delete_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#delete_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a list of Roles
    # Returns a list of Roles
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :filter_name_eq 
    # @return [ResourcesList]
    def roles_list(opts = {})
      data, _status_code, _headers = roles_list_with_http_info(opts)
      data
    end

    # Return a list of Roles
    # Returns a list of Roles
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @option opts [String] :filter_name_eq 
    # @return [Array<(ResourcesList, Integer, Hash)>] ResourcesList data, response status code and response headers
    def roles_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.roles_list ...'
      end
      # resource path
      local_var_path = '/api/v2/platform/roles'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'filter[name_eq]'] = opts[:'filter_name_eq'] if !opts[:'filter_name_eq'].nil?

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
        :operation => :"RolesApi.roles_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#roles_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a Role
    # Returns a Role
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Resource]
    def show_role(id, opts = {})
      data, _status_code, _headers = show_role_with_http_info(id, opts)
      data
    end

    # Return a Role
    # Returns a Role
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Resource, Integer, Hash)>] Resource data, response status code and response headers
    def show_role_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.show_role ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RolesApi.show_role"
      end
      # resource path
      local_var_path = '/api/v2/platform/roles/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Resource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"RolesApi.show_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#show_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Role
    # Updates a Role
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateRoleParams] :update_role_params 
    # @return [Resource]
    def update_role(id, opts = {})
      data, _status_code, _headers = update_role_with_http_info(id, opts)
      data
    end

    # Update a Role
    # Updates a Role
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateRoleParams] :update_role_params 
    # @return [Array<(Resource, Integer, Hash)>] Resource data, response status code and response headers
    def update_role_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.update_role ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RolesApi.update_role"
      end
      # resource path
      local_var_path = '/api/v2/platform/roles/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_role_params'])

      # return_type
      return_type = opts[:debug_return_type] || 'Resource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"RolesApi.update_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#update_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
