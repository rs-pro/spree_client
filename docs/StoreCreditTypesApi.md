# SpreeClient::StoreCreditTypesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_store_credit_type**](StoreCreditTypesApi.md#create_store_credit_type) | **POST** /api/v2/platform/store_credit_types | Create a Store Credit Type |
| [**delete_store_credit_type**](StoreCreditTypesApi.md#delete_store_credit_type) | **DELETE** /api/v2/platform/store_credit_types/{id} | Delete a Store Credit Type |
| [**show_store_credit_type**](StoreCreditTypesApi.md#show_store_credit_type) | **GET** /api/v2/platform/store_credit_types/{id} | Return a Store Credit Type |
| [**store_credit_types_list**](StoreCreditTypesApi.md#store_credit_types_list) | **GET** /api/v2/platform/store_credit_types | Return a list of Store Credit Types |
| [**update_store_credit_type**](StoreCreditTypesApi.md#update_store_credit_type) | **PATCH** /api/v2/platform/store_credit_types/{id} | Update a Store Credit Type |


## create_store_credit_type

> <Resource> create_store_credit_type(opts)

Create a Store Credit Type

Creates a Store Credit Type

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditTypesApi.new
opts = {
  create_store_credit_type_params: SpreeClient::CreateStoreCreditTypeParams.new({store_credit_type: SpreeClient::CreateStoreCreditTypeParamsStoreCreditType.new({name: 'refunded'})}) # CreateStoreCreditTypeParams | 
}

begin
  # Create a Store Credit Type
  result = api_instance.create_store_credit_type(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditTypesApi->create_store_credit_type: #{e}"
end
```

#### Using the create_store_credit_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_store_credit_type_with_http_info(opts)

```ruby
begin
  # Create a Store Credit Type
  data, status_code, headers = api_instance.create_store_credit_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditTypesApi->create_store_credit_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_store_credit_type_params** | [**CreateStoreCreditTypeParams**](CreateStoreCreditTypeParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_store_credit_type

> delete_store_credit_type(id)

Delete a Store Credit Type

Deletes a Store Credit Type

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditTypesApi.new
id = 'id_example' # String | 

begin
  # Delete a Store Credit Type
  api_instance.delete_store_credit_type(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditTypesApi->delete_store_credit_type: #{e}"
end
```

#### Using the delete_store_credit_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_store_credit_type_with_http_info(id)

```ruby
begin
  # Delete a Store Credit Type
  data, status_code, headers = api_instance.delete_store_credit_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditTypesApi->delete_store_credit_type_with_http_info: #{e}"
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


## show_store_credit_type

> <Resource> show_store_credit_type(id)

Return a Store Credit Type

Returns a Store Credit Type

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditTypesApi.new
id = 'id_example' # String | 

begin
  # Return a Store Credit Type
  result = api_instance.show_store_credit_type(id)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditTypesApi->show_store_credit_type: #{e}"
end
```

#### Using the show_store_credit_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_store_credit_type_with_http_info(id)

```ruby
begin
  # Return a Store Credit Type
  data, status_code, headers = api_instance.show_store_credit_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditTypesApi->show_store_credit_type_with_http_info: #{e}"
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


## store_credit_types_list

> <ResourcesList> store_credit_types_list(opts)

Return a list of Store Credit Types

Returns a list of Store Credit Types

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditTypesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50 # Integer | 
}

begin
  # Return a list of Store Credit Types
  result = api_instance.store_credit_types_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditTypesApi->store_credit_types_list: #{e}"
end
```

#### Using the store_credit_types_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> store_credit_types_list_with_http_info(opts)

```ruby
begin
  # Return a list of Store Credit Types
  data, status_code, headers = api_instance.store_credit_types_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditTypesApi->store_credit_types_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## update_store_credit_type

> <Resource> update_store_credit_type(id, opts)

Update a Store Credit Type

Updates a Store Credit Type

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditTypesApi.new
id = 'id_example' # String | 
opts = {
  update_store_credit_type_params: SpreeClient::UpdateStoreCreditTypeParams.new({store_credit_type: SpreeClient::UpdateStoreCreditTypeParamsStoreCreditType.new}) # UpdateStoreCreditTypeParams | 
}

begin
  # Update a Store Credit Type
  result = api_instance.update_store_credit_type(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditTypesApi->update_store_credit_type: #{e}"
end
```

#### Using the update_store_credit_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_store_credit_type_with_http_info(id, opts)

```ruby
begin
  # Update a Store Credit Type
  data, status_code, headers = api_instance.update_store_credit_type_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditTypesApi->update_store_credit_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_store_credit_type_params** | [**UpdateStoreCreditTypeParams**](UpdateStoreCreditTypeParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

