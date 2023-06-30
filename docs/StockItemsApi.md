# SpreeClient::StockItemsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_stock_item**](StockItemsApi.md#create_stock_item) | **POST** /api/v2/platform/stock_items | Create a Stock Item |
| [**delete_stock_item**](StockItemsApi.md#delete_stock_item) | **DELETE** /api/v2/platform/stock_items/{id} | Delete a Stock Item |
| [**show_stock_item**](StockItemsApi.md#show_stock_item) | **GET** /api/v2/platform/stock_items/{id} | Return a Stock Item |
| [**stock_items_list**](StockItemsApi.md#stock_items_list) | **GET** /api/v2/platform/stock_items | Return a list of Stock Items |
| [**update_stock_item**](StockItemsApi.md#update_stock_item) | **PATCH** /api/v2/platform/stock_items/{id} | Update a Stock Item |


## create_stock_item

> <Resource> create_stock_item(opts)

Create a Stock Item

Creates a Stock Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StockItemsApi.new
opts = {
  include: 'stock_location,variant', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_stock_item_params: SpreeClient::CreateStockItemParams.new({stock_item: SpreeClient::CreateStockItemParamsStockItem.new({variant_id: '2', stock_location_id: '2', count_on_hand: 200})}) # CreateStockItemParams | 
}

begin
  # Create a Stock Item
  result = api_instance.create_stock_item(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StockItemsApi->create_stock_item: #{e}"
end
```

#### Using the create_stock_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_stock_item_with_http_info(opts)

```ruby
begin
  # Create a Stock Item
  data, status_code, headers = api_instance.create_stock_item_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StockItemsApi->create_stock_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_stock_item_params** | [**CreateStockItemParams**](CreateStockItemParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_stock_item

> delete_stock_item(id)

Delete a Stock Item

Deletes a Stock Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StockItemsApi.new
id = 'id_example' # String | 

begin
  # Delete a Stock Item
  api_instance.delete_stock_item(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling StockItemsApi->delete_stock_item: #{e}"
end
```

#### Using the delete_stock_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_stock_item_with_http_info(id)

```ruby
begin
  # Delete a Stock Item
  data, status_code, headers = api_instance.delete_stock_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling StockItemsApi->delete_stock_item_with_http_info: #{e}"
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


## show_stock_item

> <Resource> show_stock_item(id, opts)

Return a Stock Item

Returns a Stock Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StockItemsApi.new
id = 'id_example' # String | 
opts = {
  include: 'stock_location,variant' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Stock Item
  result = api_instance.show_stock_item(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StockItemsApi->show_stock_item: #{e}"
end
```

#### Using the show_stock_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_stock_item_with_http_info(id, opts)

```ruby
begin
  # Return a Stock Item
  data, status_code, headers = api_instance.show_stock_item_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StockItemsApi->show_stock_item_with_http_info: #{e}"
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


## stock_items_list

> <ResourcesList> stock_items_list(opts)

Return a list of Stock Items

Returns a list of Stock Items

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StockItemsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'stock_location,variant' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a list of Stock Items
  result = api_instance.stock_items_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StockItemsApi->stock_items_list: #{e}"
end
```

#### Using the stock_items_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> stock_items_list_with_http_info(opts)

```ruby
begin
  # Return a list of Stock Items
  data, status_code, headers = api_instance.stock_items_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling StockItemsApi->stock_items_list_with_http_info: #{e}"
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


## update_stock_item

> <Resource> update_stock_item(id, opts)

Update a Stock Item

Updates a Stock Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StockItemsApi.new
id = 'id_example' # String | 
opts = {
  include: 'stock_location,variant', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_stock_item_params: SpreeClient::UpdateStockItemParams.new({stock_item: SpreeClient::CreateStockItemParamsStockItem.new({variant_id: '2', stock_location_id: '2', count_on_hand: 200})}) # UpdateStockItemParams | 
}

begin
  # Update a Stock Item
  result = api_instance.update_stock_item(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StockItemsApi->update_stock_item: #{e}"
end
```

#### Using the update_stock_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_stock_item_with_http_info(id, opts)

```ruby
begin
  # Update a Stock Item
  data, status_code, headers = api_instance.update_stock_item_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StockItemsApi->update_stock_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_stock_item_params** | [**UpdateStockItemParams**](UpdateStockItemParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

