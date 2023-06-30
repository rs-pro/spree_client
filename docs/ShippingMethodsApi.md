# SpreeClient::ShippingMethodsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_shipping_method**](ShippingMethodsApi.md#create_shipping_method) | **POST** /api/v2/platform/shipping_methods | Create a Shipping Method |
| [**delete_shipping_method**](ShippingMethodsApi.md#delete_shipping_method) | **DELETE** /api/v2/platform/shipping_methods/{id} | Delete a Shipping Method |
| [**shipping_methods_list**](ShippingMethodsApi.md#shipping_methods_list) | **GET** /api/v2/platform/shipping_methods | Return a list of Shipping Methods |
| [**show_shipping_method**](ShippingMethodsApi.md#show_shipping_method) | **GET** /api/v2/platform/shipping_methods/{id} | Return a Shipping Method |
| [**update_shipping_method**](ShippingMethodsApi.md#update_shipping_method) | **PATCH** /api/v2/platform/shipping_methods/{id} | Update a Shipping Method |


## create_shipping_method

> <Resource> create_shipping_method(opts)

Create a Shipping Method

Creates a Shipping Method

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShippingMethodsApi.new
opts = {
  include: 'calculator,shipping_categories,shipping_rates,tax_category', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_shipping_method_params: SpreeClient::CreateShippingMethodParams.new({shipping_method: SpreeClient::CreateShippingMethodParamsShippingMethod.new({name: 'DHL Express', display_on: 'both', shipping_category_ids: ['2']})}) # CreateShippingMethodParams | 
}

begin
  # Create a Shipping Method
  result = api_instance.create_shipping_method(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingMethodsApi->create_shipping_method: #{e}"
end
```

#### Using the create_shipping_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_shipping_method_with_http_info(opts)

```ruby
begin
  # Create a Shipping Method
  data, status_code, headers = api_instance.create_shipping_method_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingMethodsApi->create_shipping_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_shipping_method_params** | [**CreateShippingMethodParams**](CreateShippingMethodParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_shipping_method

> delete_shipping_method(id)

Delete a Shipping Method

Deletes a Shipping Method

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShippingMethodsApi.new
id = 'id_example' # String | 

begin
  # Delete a Shipping Method
  api_instance.delete_shipping_method(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingMethodsApi->delete_shipping_method: #{e}"
end
```

#### Using the delete_shipping_method_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_shipping_method_with_http_info(id)

```ruby
begin
  # Delete a Shipping Method
  data, status_code, headers = api_instance.delete_shipping_method_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingMethodsApi->delete_shipping_method_with_http_info: #{e}"
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


## shipping_methods_list

> <ResourcesList> shipping_methods_list(opts)

Return a list of Shipping Methods

Returns a list of Shipping Methods

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShippingMethodsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'calculator,shipping_categories,shipping_rates,tax_category', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_name: 'DHL Express', # String | 
  filter_title_cont: 'About Us' # String | 
}

begin
  # Return a list of Shipping Methods
  result = api_instance.shipping_methods_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingMethodsApi->shipping_methods_list: #{e}"
end
```

#### Using the shipping_methods_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> shipping_methods_list_with_http_info(opts)

```ruby
begin
  # Return a list of Shipping Methods
  data, status_code, headers = api_instance.shipping_methods_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingMethodsApi->shipping_methods_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_name** | **String** |  | [optional] |
| **filter_title_cont** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_shipping_method

> <Resource> show_shipping_method(id, opts)

Return a Shipping Method

Returns a Shipping Method

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShippingMethodsApi.new
id = 'id_example' # String | 
opts = {
  include: 'calculator,shipping_categories,shipping_rates,tax_category' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Shipping Method
  result = api_instance.show_shipping_method(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingMethodsApi->show_shipping_method: #{e}"
end
```

#### Using the show_shipping_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_shipping_method_with_http_info(id, opts)

```ruby
begin
  # Return a Shipping Method
  data, status_code, headers = api_instance.show_shipping_method_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingMethodsApi->show_shipping_method_with_http_info: #{e}"
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


## update_shipping_method

> <Resource> update_shipping_method(id, opts)

Update a Shipping Method

Updates a Shipping Method

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShippingMethodsApi.new
id = 'id_example' # String | 
opts = {
  include: 'calculator,shipping_categories,shipping_rates,tax_category', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_shipping_method_params: SpreeClient::UpdateShippingMethodParams.new({shipping_method: SpreeClient::UpdateShippingMethodParamsShippingMethod.new}) # UpdateShippingMethodParams | 
}

begin
  # Update a Shipping Method
  result = api_instance.update_shipping_method(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingMethodsApi->update_shipping_method: #{e}"
end
```

#### Using the update_shipping_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_shipping_method_with_http_info(id, opts)

```ruby
begin
  # Update a Shipping Method
  data, status_code, headers = api_instance.update_shipping_method_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShippingMethodsApi->update_shipping_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_shipping_method_params** | [**UpdateShippingMethodParams**](UpdateShippingMethodParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

