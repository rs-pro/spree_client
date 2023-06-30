# SpreeClient::ShippingCategoriesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_shipping_category**](ShippingCategoriesApi.md#create_shipping_category) | **POST** /api/v2/platform/shipping_categories | Create a Shipping Category |
| [**delete_shipping_category**](ShippingCategoriesApi.md#delete_shipping_category) | **DELETE** /api/v2/platform/shipping_categories/{id} | Delete a Shipping Category |
| [**shipping_categories_list**](ShippingCategoriesApi.md#shipping_categories_list) | **GET** /api/v2/platform/shipping_categories | Return a list of Shipping Categories |
| [**show_shipping_category**](ShippingCategoriesApi.md#show_shipping_category) | **GET** /api/v2/platform/shipping_categories/{id} | Return a Shipping Category |
| [**update_shipping_category**](ShippingCategoriesApi.md#update_shipping_category) | **PATCH** /api/v2/platform/shipping_categories/{id} | Update a Shipping Category |


## create_shipping_category

> <Resource> create_shipping_category(opts)

Create a Shipping Category

Creates a Shipping Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShippingCategoriesApi.new
opts = {
  create_shipping_category_params: SpreeClient::CreateShippingCategoryParams.new({shipping_category: SpreeClient::CreateShippingCategoryParamsShippingCategory.new({name: 'Another Category'})}) # CreateShippingCategoryParams | 
}

begin
  # Create a Shipping Category
  result = api_instance.create_shipping_category(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingCategoriesApi->create_shipping_category: #{e}"
end
```

#### Using the create_shipping_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_shipping_category_with_http_info(opts)

```ruby
begin
  # Create a Shipping Category
  data, status_code, headers = api_instance.create_shipping_category_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingCategoriesApi->create_shipping_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_shipping_category_params** | [**CreateShippingCategoryParams**](CreateShippingCategoryParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_shipping_category

> delete_shipping_category(id)

Delete a Shipping Category

Deletes a Shipping Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShippingCategoriesApi.new
id = 'id_example' # String | 

begin
  # Delete a Shipping Category
  api_instance.delete_shipping_category(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingCategoriesApi->delete_shipping_category: #{e}"
end
```

#### Using the delete_shipping_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_shipping_category_with_http_info(id)

```ruby
begin
  # Delete a Shipping Category
  data, status_code, headers = api_instance.delete_shipping_category_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingCategoriesApi->delete_shipping_category_with_http_info: #{e}"
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


## shipping_categories_list

> <ResourcesList> shipping_categories_list(opts)

Return a list of Shipping Categories

Returns a list of Shipping Categories

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShippingCategoriesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  filter_name_i_cont: 'default' # String | 
}

begin
  # Return a list of Shipping Categories
  result = api_instance.shipping_categories_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingCategoriesApi->shipping_categories_list: #{e}"
end
```

#### Using the shipping_categories_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> shipping_categories_list_with_http_info(opts)

```ruby
begin
  # Return a list of Shipping Categories
  data, status_code, headers = api_instance.shipping_categories_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingCategoriesApi->shipping_categories_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **filter_name_i_cont** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_shipping_category

> <Resource> show_shipping_category(id)

Return a Shipping Category

Returns a Shipping Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShippingCategoriesApi.new
id = 'id_example' # String | 

begin
  # Return a Shipping Category
  result = api_instance.show_shipping_category(id)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingCategoriesApi->show_shipping_category: #{e}"
end
```

#### Using the show_shipping_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_shipping_category_with_http_info(id)

```ruby
begin
  # Return a Shipping Category
  data, status_code, headers = api_instance.show_shipping_category_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingCategoriesApi->show_shipping_category_with_http_info: #{e}"
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


## update_shipping_category

> <Resource> update_shipping_category(id, opts)

Update a Shipping Category

Updates a Shipping Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShippingCategoriesApi.new
id = 'id_example' # String | 
opts = {
  update_shipping_category_params: SpreeClient::UpdateShippingCategoryParams.new({shipping_category: SpreeClient::CreateShippingCategoryParamsShippingCategory.new({name: 'Another Category'})}) # UpdateShippingCategoryParams | 
}

begin
  # Update a Shipping Category
  result = api_instance.update_shipping_category(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingCategoriesApi->update_shipping_category: #{e}"
end
```

#### Using the update_shipping_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_shipping_category_with_http_info(id, opts)

```ruby
begin
  # Update a Shipping Category
  data, status_code, headers = api_instance.update_shipping_category_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingCategoriesApi->update_shipping_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_shipping_category_params** | [**UpdateShippingCategoryParams**](UpdateShippingCategoryParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

