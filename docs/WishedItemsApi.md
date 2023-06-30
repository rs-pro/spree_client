# SpreeClient::WishedItemsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_wished_item**](WishedItemsApi.md#create_wished_item) | **POST** /api/v2/platform/wished_items | Create a Wished Item |
| [**delete_wished_item**](WishedItemsApi.md#delete_wished_item) | **DELETE** /api/v2/platform/wished_items/{id} | Delete a Wished Item |
| [**show_wished_item**](WishedItemsApi.md#show_wished_item) | **GET** /api/v2/platform/wished_items/{id} | Return a Wished Item |
| [**update_wished_item**](WishedItemsApi.md#update_wished_item) | **PATCH** /api/v2/platform/wished_items/{id} | Update a Wished Item |
| [**wished_items_list**](WishedItemsApi.md#wished_items_list) | **GET** /api/v2/platform/wished_items | Return a list of Wished Items |


## create_wished_item

> <Resource> create_wished_item(opts)

Create a Wished Item

Creates a Wished Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WishedItemsApi.new
opts = {
  include: 'variant', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_wished_item_params: SpreeClient::CreateWishedItemParams.new({wished_item: SpreeClient::CreateWishedItemParamsWishedItem.new({wishlist_id: 'wishlist_id_example', variant_id: 'variant_id_example', quantity: 37})}) # CreateWishedItemParams | 
}

begin
  # Create a Wished Item
  result = api_instance.create_wished_item(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling WishedItemsApi->create_wished_item: #{e}"
end
```

#### Using the create_wished_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_wished_item_with_http_info(opts)

```ruby
begin
  # Create a Wished Item
  data, status_code, headers = api_instance.create_wished_item_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling WishedItemsApi->create_wished_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_wished_item_params** | [**CreateWishedItemParams**](CreateWishedItemParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_wished_item

> delete_wished_item(id)

Delete a Wished Item

Deletes a Wished Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WishedItemsApi.new
id = 'id_example' # String | 

begin
  # Delete a Wished Item
  api_instance.delete_wished_item(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling WishedItemsApi->delete_wished_item: #{e}"
end
```

#### Using the delete_wished_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_wished_item_with_http_info(id)

```ruby
begin
  # Delete a Wished Item
  data, status_code, headers = api_instance.delete_wished_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling WishedItemsApi->delete_wished_item_with_http_info: #{e}"
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


## show_wished_item

> <Resource> show_wished_item(id, opts)

Return a Wished Item

Returns a Wished Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WishedItemsApi.new
id = 'id_example' # String | 
opts = {
  include: 'variant' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Wished Item
  result = api_instance.show_wished_item(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling WishedItemsApi->show_wished_item: #{e}"
end
```

#### Using the show_wished_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_wished_item_with_http_info(id, opts)

```ruby
begin
  # Return a Wished Item
  data, status_code, headers = api_instance.show_wished_item_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling WishedItemsApi->show_wished_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## update_wished_item

> <Resource> update_wished_item(id, opts)

Update a Wished Item

Updates a Wished Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WishedItemsApi.new
id = 'id_example' # String | 
opts = {
  include: 'variant', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_wished_item_params: SpreeClient::UpdateWishedItemParams.new({wished_item: SpreeClient::CreateWishedItemParamsWishedItem.new({wishlist_id: 'wishlist_id_example', variant_id: 'variant_id_example', quantity: 37})}) # UpdateWishedItemParams | 
}

begin
  # Update a Wished Item
  result = api_instance.update_wished_item(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling WishedItemsApi->update_wished_item: #{e}"
end
```

#### Using the update_wished_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_wished_item_with_http_info(id, opts)

```ruby
begin
  # Update a Wished Item
  data, status_code, headers = api_instance.update_wished_item_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling WishedItemsApi->update_wished_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_wished_item_params** | [**UpdateWishedItemParams**](UpdateWishedItemParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## wished_items_list

> <ResourcesList> wished_items_list(opts)

Return a list of Wished Items

Returns a list of Wished Items

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WishedItemsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'variant' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a list of Wished Items
  result = api_instance.wished_items_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling WishedItemsApi->wished_items_list: #{e}"
end
```

#### Using the wished_items_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> wished_items_list_with_http_info(opts)

```ruby
begin
  # Return a list of Wished Items
  data, status_code, headers = api_instance.wished_items_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling WishedItemsApi->wished_items_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json

