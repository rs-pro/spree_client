# SpreeClient::OptionTypesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_option_type**](OptionTypesApi.md#create_option_type) | **POST** /api/v2/platform/option_types | Create an Option Type |
| [**delete_option_type**](OptionTypesApi.md#delete_option_type) | **DELETE** /api/v2/platform/option_types/{id} | Delete an Option Type |
| [**option_types_list**](OptionTypesApi.md#option_types_list) | **GET** /api/v2/platform/option_types | Return a list of Option Types |
| [**show_option_type**](OptionTypesApi.md#show_option_type) | **GET** /api/v2/platform/option_types/{id} | Return an Option Type |
| [**update_option_type**](OptionTypesApi.md#update_option_type) | **PATCH** /api/v2/platform/option_types/{id} | Update an Option Type |


## create_option_type

> <Resource> create_option_type(opts)

Create an Option Type

Creates an Option Type

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OptionTypesApi.new
opts = {
  create_option_type_params: SpreeClient::CreateOptionTypeParams.new({option_type: SpreeClient::CreateOptionTypeParamsOptionType.new({name: 'color', presentation: 'Color'})}) # CreateOptionTypeParams | 
}

begin
  # Create an Option Type
  result = api_instance.create_option_type(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionTypesApi->create_option_type: #{e}"
end
```

#### Using the create_option_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_option_type_with_http_info(opts)

```ruby
begin
  # Create an Option Type
  data, status_code, headers = api_instance.create_option_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionTypesApi->create_option_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_option_type_params** | [**CreateOptionTypeParams**](CreateOptionTypeParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_option_type

> delete_option_type(id)

Delete an Option Type

Deletes an Option Type

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OptionTypesApi.new
id = 'id_example' # String | 

begin
  # Delete an Option Type
  api_instance.delete_option_type(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionTypesApi->delete_option_type: #{e}"
end
```

#### Using the delete_option_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_option_type_with_http_info(id)

```ruby
begin
  # Delete an Option Type
  data, status_code, headers = api_instance.delete_option_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionTypesApi->delete_option_type_with_http_info: #{e}"
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


## option_types_list

> <ResourcesList> option_types_list(opts)

Return a list of Option Types

Returns a list of Option Types

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OptionTypesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  filter_option_type_id_eq: '1', # String | 
  filter_name_cont: 'Size' # String | 
}

begin
  # Return a list of Option Types
  result = api_instance.option_types_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionTypesApi->option_types_list: #{e}"
end
```

#### Using the option_types_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> option_types_list_with_http_info(opts)

```ruby
begin
  # Return a list of Option Types
  data, status_code, headers = api_instance.option_types_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionTypesApi->option_types_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **filter_option_type_id_eq** | **String** |  | [optional] |
| **filter_name_cont** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_option_type

> <Resource> show_option_type(id)

Return an Option Type

Returns an Option Type

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OptionTypesApi.new
id = 'id_example' # String | 

begin
  # Return an Option Type
  result = api_instance.show_option_type(id)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionTypesApi->show_option_type: #{e}"
end
```

#### Using the show_option_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_option_type_with_http_info(id)

```ruby
begin
  # Return an Option Type
  data, status_code, headers = api_instance.show_option_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionTypesApi->show_option_type_with_http_info: #{e}"
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


## update_option_type

> <Resource> update_option_type(id, opts)

Update an Option Type

Updates an Option Type

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OptionTypesApi.new
id = 'id_example' # String | 
opts = {
  update_option_type_params: SpreeClient::UpdateOptionTypeParams.new({option_type: SpreeClient::UpdateOptionTypeParamsOptionType.new}) # UpdateOptionTypeParams | 
}

begin
  # Update an Option Type
  result = api_instance.update_option_type(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionTypesApi->update_option_type: #{e}"
end
```

#### Using the update_option_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_option_type_with_http_info(id, opts)

```ruby
begin
  # Update an Option Type
  data, status_code, headers = api_instance.update_option_type_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionTypesApi->update_option_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_option_type_params** | [**UpdateOptionTypeParams**](UpdateOptionTypeParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

