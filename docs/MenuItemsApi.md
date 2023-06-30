# SpreeClient::MenuItemsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_menu_item**](MenuItemsApi.md#create_menu_item) | **POST** /api/v2/platform/menu_items | Create a Menu Item |
| [**delete_menu_item**](MenuItemsApi.md#delete_menu_item) | **DELETE** /api/v2/platform/menu_items/{id} | Delete a Menu Item |
| [**menu_items_list**](MenuItemsApi.md#menu_items_list) | **GET** /api/v2/platform/menu_items | Return a list of Menu Items |
| [**reposition_menu_item**](MenuItemsApi.md#reposition_menu_item) | **PATCH** /api/v2/platform/menu_items/{id}/reposition | Reposition a Menu Item |
| [**show_menu_item**](MenuItemsApi.md#show_menu_item) | **GET** /api/v2/platform/menu_items/{id} | Return a Menu Item |
| [**update_menu_item**](MenuItemsApi.md#update_menu_item) | **PATCH** /api/v2/platform/menu_items/{id} | Update a Menu Item |


## create_menu_item

> <Resource> create_menu_item(opts)

Create a Menu Item

Creates a Menu Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::MenuItemsApi.new
opts = {
  include: 'menu,icon,parent,children,linked_resource', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_menu_item_params: SpreeClient::CreateMenuItemParams.new({menu_item: SpreeClient::CreateMenuItemParamsMenuItem.new({name: 'T-Shirts', menu_id: 1})}) # CreateMenuItemParams | 
}

begin
  # Create a Menu Item
  result = api_instance.create_menu_item(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling MenuItemsApi->create_menu_item: #{e}"
end
```

#### Using the create_menu_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_menu_item_with_http_info(opts)

```ruby
begin
  # Create a Menu Item
  data, status_code, headers = api_instance.create_menu_item_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling MenuItemsApi->create_menu_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_menu_item_params** | [**CreateMenuItemParams**](CreateMenuItemParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_menu_item

> delete_menu_item(id)

Delete a Menu Item

Deletes a Menu Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::MenuItemsApi.new
id = 'id_example' # String | 

begin
  # Delete a Menu Item
  api_instance.delete_menu_item(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling MenuItemsApi->delete_menu_item: #{e}"
end
```

#### Using the delete_menu_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_menu_item_with_http_info(id)

```ruby
begin
  # Delete a Menu Item
  data, status_code, headers = api_instance.delete_menu_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling MenuItemsApi->delete_menu_item_with_http_info: #{e}"
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


## menu_items_list

> <ResourcesList> menu_items_list(opts)

Return a list of Menu Items

Returns a list of Menu Items

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::MenuItemsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'menu,icon,parent,children,linked_resource', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_name_eq: 'T-Shirts' # String | 
}

begin
  # Return a list of Menu Items
  result = api_instance.menu_items_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling MenuItemsApi->menu_items_list: #{e}"
end
```

#### Using the menu_items_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> menu_items_list_with_http_info(opts)

```ruby
begin
  # Return a list of Menu Items
  data, status_code, headers = api_instance.menu_items_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling MenuItemsApi->menu_items_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_name_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## reposition_menu_item

> <Resource> reposition_menu_item(id, opts)

Reposition a Menu Item

Reposition a Menu Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::MenuItemsApi.new
id = 'id_example' # String | 
opts = {
  menu_item_reposition: SpreeClient::MenuItemReposition.new({menu_item: SpreeClient::MenuItemRepositionMenuItem.new({new_parent_id: 1, new_position_idx: 1})}) # MenuItemReposition | 
}

begin
  # Reposition a Menu Item
  result = api_instance.reposition_menu_item(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling MenuItemsApi->reposition_menu_item: #{e}"
end
```

#### Using the reposition_menu_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> reposition_menu_item_with_http_info(id, opts)

```ruby
begin
  # Reposition a Menu Item
  data, status_code, headers = api_instance.reposition_menu_item_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling MenuItemsApi->reposition_menu_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **menu_item_reposition** | [**MenuItemReposition**](MenuItemReposition.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## show_menu_item

> <Resource> show_menu_item(id, opts)

Return a Menu Item

Returns a Menu Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::MenuItemsApi.new
id = 'id_example' # String | 
opts = {
  include: 'menu,icon,parent,children,linked_resource' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Menu Item
  result = api_instance.show_menu_item(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling MenuItemsApi->show_menu_item: #{e}"
end
```

#### Using the show_menu_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_menu_item_with_http_info(id, opts)

```ruby
begin
  # Return a Menu Item
  data, status_code, headers = api_instance.show_menu_item_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling MenuItemsApi->show_menu_item_with_http_info: #{e}"
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


## update_menu_item

> <Resource> update_menu_item(id, opts)

Update a Menu Item

Updates a Menu Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::MenuItemsApi.new
id = 'id_example' # String | 
opts = {
  include: 'menu,icon,parent,children,linked_resource', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_menu_item_params: SpreeClient::UpdateMenuItemParams.new({menu_item: SpreeClient::UpdateMenuItemParamsMenuItem.new}) # UpdateMenuItemParams | 
}

begin
  # Update a Menu Item
  result = api_instance.update_menu_item(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling MenuItemsApi->update_menu_item: #{e}"
end
```

#### Using the update_menu_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_menu_item_with_http_info(id, opts)

```ruby
begin
  # Update a Menu Item
  data, status_code, headers = api_instance.update_menu_item_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling MenuItemsApi->update_menu_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_menu_item_params** | [**UpdateMenuItemParams**](UpdateMenuItemParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

