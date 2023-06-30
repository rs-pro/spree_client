# SpreeClient::RolesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_role**](RolesApi.md#create_role) | **POST** /api/v2/platform/roles | Create a Role |
| [**delete_role**](RolesApi.md#delete_role) | **DELETE** /api/v2/platform/roles/{id} | Delete a Role |
| [**roles_list**](RolesApi.md#roles_list) | **GET** /api/v2/platform/roles | Return a list of Roles |
| [**show_role**](RolesApi.md#show_role) | **GET** /api/v2/platform/roles/{id} | Return a Role |
| [**update_role**](RolesApi.md#update_role) | **PATCH** /api/v2/platform/roles/{id} | Update a Role |


## create_role

> <Resource> create_role(opts)

Create a Role

Creates a Role

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::RolesApi.new
opts = {
  create_role_params: SpreeClient::CreateRoleParams.new # CreateRoleParams | 
}

begin
  # Create a Role
  result = api_instance.create_role(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling RolesApi->create_role: #{e}"
end
```

#### Using the create_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_role_with_http_info(opts)

```ruby
begin
  # Create a Role
  data, status_code, headers = api_instance.create_role_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling RolesApi->create_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_role_params** | [**CreateRoleParams**](CreateRoleParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_role

> delete_role(id)

Delete a Role

Deletes a Role

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::RolesApi.new
id = 'id_example' # String | 

begin
  # Delete a Role
  api_instance.delete_role(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling RolesApi->delete_role: #{e}"
end
```

#### Using the delete_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_role_with_http_info(id)

```ruby
begin
  # Delete a Role
  data, status_code, headers = api_instance.delete_role_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling RolesApi->delete_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## roles_list

> <ResourcesList> roles_list(opts)

Return a list of Roles

Returns a list of Roles

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::RolesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  filter_name_eq: 'admin' # String | 
}

begin
  # Return a list of Roles
  result = api_instance.roles_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling RolesApi->roles_list: #{e}"
end
```

#### Using the roles_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> roles_list_with_http_info(opts)

```ruby
begin
  # Return a list of Roles
  data, status_code, headers = api_instance.roles_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling RolesApi->roles_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **filter_name_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_role

> <Resource> show_role(id)

Return a Role

Returns a Role

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::RolesApi.new
id = 'id_example' # String | 

begin
  # Return a Role
  result = api_instance.show_role(id)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling RolesApi->show_role: #{e}"
end
```

#### Using the show_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_role_with_http_info(id)

```ruby
begin
  # Return a Role
  data, status_code, headers = api_instance.show_role_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling RolesApi->show_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## update_role

> <Resource> update_role(id, opts)

Update a Role

Updates a Role

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::RolesApi.new
id = 'id_example' # String | 
opts = {
  update_role_params: SpreeClient::UpdateRoleParams.new # UpdateRoleParams | 
}

begin
  # Update a Role
  result = api_instance.update_role(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling RolesApi->update_role: #{e}"
end
```

#### Using the update_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_role_with_http_info(id, opts)

```ruby
begin
  # Update a Role
  data, status_code, headers = api_instance.update_role_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling RolesApi->update_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_role_params** | [**UpdateRoleParams**](UpdateRoleParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

