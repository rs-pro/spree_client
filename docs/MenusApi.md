# SpreeClient::MenusApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_menu**](MenusApi.md#create_menu) | **POST** /api/v2/platform/menus | Create a Menu |
| [**delete_menu**](MenusApi.md#delete_menu) | **DELETE** /api/v2/platform/menus/{id} | Delete a Menu |
| [**menus_list**](MenusApi.md#menus_list) | **GET** /api/v2/platform/menus | Return a list of Menus |
| [**show_menu**](MenusApi.md#show_menu) | **GET** /api/v2/platform/menus/{id} | Return a Menu |
| [**update_menu**](MenusApi.md#update_menu) | **PATCH** /api/v2/platform/menus/{id} | Update a Menu |


## create_menu

> <Resource> create_menu(opts)

Create a Menu

Creates a Menu

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::MenusApi.new
opts = {
  include: 'menu_items', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_menu_params: SpreeClient::CreateMenuParams.new({menu: SpreeClient::CreateMenuParamsMenu.new({name: 'Main Menu', location: 'header', locale: 'en-US'})}) # CreateMenuParams | 
}

begin
  # Create a Menu
  result = api_instance.create_menu(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling MenusApi->create_menu: #{e}"
end
```

#### Using the create_menu_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_menu_with_http_info(opts)

```ruby
begin
  # Create a Menu
  data, status_code, headers = api_instance.create_menu_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling MenusApi->create_menu_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_menu_params** | [**CreateMenuParams**](CreateMenuParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_menu

> delete_menu(id)

Delete a Menu

Deletes a Menu

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::MenusApi.new
id = 'id_example' # String | 

begin
  # Delete a Menu
  api_instance.delete_menu(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling MenusApi->delete_menu: #{e}"
end
```

#### Using the delete_menu_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_menu_with_http_info(id)

```ruby
begin
  # Delete a Menu
  data, status_code, headers = api_instance.delete_menu_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling MenusApi->delete_menu_with_http_info: #{e}"
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


## menus_list

> <ResourcesList> menus_list(opts)

Return a list of Menus

Returns a list of Menus

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::MenusApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'menu_items', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_name_eq: 'Main Menu', # String | 
  filter_location_eq: 'header' # String | 
}

begin
  # Return a list of Menus
  result = api_instance.menus_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling MenusApi->menus_list: #{e}"
end
```

#### Using the menus_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> menus_list_with_http_info(opts)

```ruby
begin
  # Return a list of Menus
  data, status_code, headers = api_instance.menus_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling MenusApi->menus_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_name_eq** | **String** |  | [optional] |
| **filter_location_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_menu

> <Resource> show_menu(id, opts)

Return a Menu

Returns a Menu

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::MenusApi.new
id = 'id_example' # String | 
opts = {
  include: 'menu_items' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Menu
  result = api_instance.show_menu(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling MenusApi->show_menu: #{e}"
end
```

#### Using the show_menu_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_menu_with_http_info(id, opts)

```ruby
begin
  # Return a Menu
  data, status_code, headers = api_instance.show_menu_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling MenusApi->show_menu_with_http_info: #{e}"
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


## update_menu

> <Resource> update_menu(id, opts)

Update a Menu

Updates a Menu

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::MenusApi.new
id = 'id_example' # String | 
opts = {
  include: 'menu_items', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_menu_params: SpreeClient::UpdateMenuParams.new({menu: SpreeClient::UpdateMenuParamsMenu.new}) # UpdateMenuParams | 
}

begin
  # Update a Menu
  result = api_instance.update_menu(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling MenusApi->update_menu: #{e}"
end
```

#### Using the update_menu_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_menu_with_http_info(id, opts)

```ruby
begin
  # Update a Menu
  data, status_code, headers = api_instance.update_menu_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling MenusApi->update_menu_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_menu_params** | [**UpdateMenuParams**](UpdateMenuParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

