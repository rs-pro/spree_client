# SpreeClient::ProductsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product**](ProductsApi.md#create_product) | **POST** /api/v2/platform/products | Create a Product |
| [**delete_product**](ProductsApi.md#delete_product) | **DELETE** /api/v2/platform/products/{id} | Delete a Product |
| [**products_list**](ProductsApi.md#products_list) | **GET** /api/v2/platform/products | Return a list of Products |
| [**show_product**](ProductsApi.md#show_product) | **GET** /api/v2/platform/products/{id} | Return a Product |
| [**update_product**](ProductsApi.md#update_product) | **PATCH** /api/v2/platform/products/{id} | Update a Product |


## create_product

> <Resource> create_product(opts)

Create a Product

Creates a Product

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ProductsApi.new
opts = {
  include: 'prices', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_product_params: SpreeClient::CreateProductParams.new({product: SpreeClient::CreateProductParamsProduct.new({name: 'name_example', price: 'price_example', shipping_category_id: 'shipping_category_id_example'})}) # CreateProductParams | 
}

begin
  # Create a Product
  result = api_instance.create_product(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ProductsApi->create_product: #{e}"
end
```

#### Using the create_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_product_with_http_info(opts)

```ruby
begin
  # Create a Product
  data, status_code, headers = api_instance.create_product_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ProductsApi->create_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_product_params** | [**CreateProductParams**](CreateProductParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_product

> delete_product(id)

Delete a Product

Deletes a Product

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ProductsApi.new
id = 'id_example' # String | 

begin
  # Delete a Product
  api_instance.delete_product(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling ProductsApi->delete_product: #{e}"
end
```

#### Using the delete_product_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_product_with_http_info(id)

```ruby
begin
  # Delete a Product
  data, status_code, headers = api_instance.delete_product_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling ProductsApi->delete_product_with_http_info: #{e}"
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


## products_list

> <ResourcesList> products_list(opts)

Return a list of Products

Returns a list of Products

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ProductsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'prices', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_name_eq: 'Green Toy Boat' # String | 
}

begin
  # Return a list of Products
  result = api_instance.products_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ProductsApi->products_list: #{e}"
end
```

#### Using the products_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> products_list_with_http_info(opts)

```ruby
begin
  # Return a list of Products
  data, status_code, headers = api_instance.products_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling ProductsApi->products_list_with_http_info: #{e}"
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


## show_product

> <Resource> show_product(id, opts)

Return a Product

Returns a Product

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ProductsApi.new
id = 'id_example' # String | 
opts = {
  include: 'prices' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Product
  result = api_instance.show_product(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ProductsApi->show_product: #{e}"
end
```

#### Using the show_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_product_with_http_info(id, opts)

```ruby
begin
  # Return a Product
  data, status_code, headers = api_instance.show_product_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ProductsApi->show_product_with_http_info: #{e}"
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


## update_product

> <Resource> update_product(id, opts)

Update a Product

Updates a Product

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ProductsApi.new
id = 'id_example' # String | 
opts = {
  include: 'prices', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_product_params: SpreeClient::UpdateProductParams.new({product: SpreeClient::UpdateProductParamsProduct.new}) # UpdateProductParams | 
}

begin
  # Update a Product
  result = api_instance.update_product(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ProductsApi->update_product: #{e}"
end
```

#### Using the update_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_product_with_http_info(id, opts)

```ruby
begin
  # Update a Product
  data, status_code, headers = api_instance.update_product_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ProductsApi->update_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_product_params** | [**UpdateProductParams**](UpdateProductParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

