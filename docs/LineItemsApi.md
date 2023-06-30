# SpreeClient::LineItemsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_line_item**](LineItemsApi.md#create_line_item) | **POST** /api/v2/platform/line_items | Create a Line Item |
| [**delete_line_item**](LineItemsApi.md#delete_line_item) | **DELETE** /api/v2/platform/line_items/{id} | Delete a Line Item |
| [**line_items_list**](LineItemsApi.md#line_items_list) | **GET** /api/v2/platform/line_items | Return a list of Line Items |
| [**show_line_item**](LineItemsApi.md#show_line_item) | **GET** /api/v2/platform/line_items/{id} | Return a Line Item |
| [**update_line_item**](LineItemsApi.md#update_line_item) | **PATCH** /api/v2/platform/line_items/{id} | Update a Line Item |


## create_line_item

> <Resource> create_line_item(opts)

Create a Line Item

Creates a Line Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::LineItemsApi.new
opts = {
  include: 'order,tax_category,variant.product,digital_links', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_line_item_params: SpreeClient::CreateLineItemParams.new({line_item: SpreeClient::CreateLineItemParamsLineItem.new({order_id: '1', variant_id: '1', quantity: 2})}) # CreateLineItemParams | 
}

begin
  # Create a Line Item
  result = api_instance.create_line_item(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling LineItemsApi->create_line_item: #{e}"
end
```

#### Using the create_line_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_line_item_with_http_info(opts)

```ruby
begin
  # Create a Line Item
  data, status_code, headers = api_instance.create_line_item_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling LineItemsApi->create_line_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_line_item_params** | [**CreateLineItemParams**](CreateLineItemParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_line_item

> delete_line_item(id)

Delete a Line Item

Deletes a Line Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::LineItemsApi.new
id = 'id_example' # String | 

begin
  # Delete a Line Item
  api_instance.delete_line_item(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling LineItemsApi->delete_line_item: #{e}"
end
```

#### Using the delete_line_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_line_item_with_http_info(id)

```ruby
begin
  # Delete a Line Item
  data, status_code, headers = api_instance.delete_line_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling LineItemsApi->delete_line_item_with_http_info: #{e}"
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


## line_items_list

> <ResourcesList> line_items_list(opts)

Return a list of Line Items

Returns a list of Line Items

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::LineItemsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'order,tax_category,variant.product,digital_links', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_order_id_eq: '123' # String | 
}

begin
  # Return a list of Line Items
  result = api_instance.line_items_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling LineItemsApi->line_items_list: #{e}"
end
```

#### Using the line_items_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> line_items_list_with_http_info(opts)

```ruby
begin
  # Return a list of Line Items
  data, status_code, headers = api_instance.line_items_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling LineItemsApi->line_items_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_order_id_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_line_item

> <Resource> show_line_item(id, opts)

Return a Line Item

Returns a Line Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::LineItemsApi.new
id = 'id_example' # String | 
opts = {
  include: 'order,tax_category,variant.product,digital_links' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Line Item
  result = api_instance.show_line_item(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling LineItemsApi->show_line_item: #{e}"
end
```

#### Using the show_line_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_line_item_with_http_info(id, opts)

```ruby
begin
  # Return a Line Item
  data, status_code, headers = api_instance.show_line_item_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling LineItemsApi->show_line_item_with_http_info: #{e}"
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


## update_line_item

> <Resource> update_line_item(id, opts)

Update a Line Item

Updates a Line Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::LineItemsApi.new
id = 'id_example' # String | 
opts = {
  include: 'order,tax_category,variant.product,digital_links', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_line_item_params: SpreeClient::UpdateLineItemParams.new({line_item: SpreeClient::UpdateLineItemParamsLineItem.new}) # UpdateLineItemParams | 
}

begin
  # Update a Line Item
  result = api_instance.update_line_item(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling LineItemsApi->update_line_item: #{e}"
end
```

#### Using the update_line_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_line_item_with_http_info(id, opts)

```ruby
begin
  # Update a Line Item
  data, status_code, headers = api_instance.update_line_item_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling LineItemsApi->update_line_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_line_item_params** | [**UpdateLineItemParams**](UpdateLineItemParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

