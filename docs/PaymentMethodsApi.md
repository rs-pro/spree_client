# SpreeClient::PaymentMethodsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_method**](PaymentMethodsApi.md#create_payment_method) | **POST** /api/v2/platform/payment_methods | Create a Payment Method |
| [**delete_payment_method**](PaymentMethodsApi.md#delete_payment_method) | **DELETE** /api/v2/platform/payment_methods/{id} | Delete a Payment Method |
| [**payment_methods_list**](PaymentMethodsApi.md#payment_methods_list) | **GET** /api/v2/platform/payment_methods | Return a list of Payment Methods |
| [**show_payment_method**](PaymentMethodsApi.md#show_payment_method) | **GET** /api/v2/platform/payment_methods/{id} | Return a Payment Method |
| [**update_payment_method**](PaymentMethodsApi.md#update_payment_method) | **PATCH** /api/v2/platform/payment_methods/{id} | Update a Payment Method |


## create_payment_method

> <Resource> create_payment_method(opts)

Create a Payment Method

Creates a Payment Method

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PaymentMethodsApi.new
opts = {
  include: 'stores', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_payment_method_params: SpreeClient::CreatePaymentMethodParams.new({payment_method: SpreeClient::CreatePaymentMethodParamsPaymentMethod.new({name: 'Test Payment Method'})}) # CreatePaymentMethodParams | 
}

begin
  # Create a Payment Method
  result = api_instance.create_payment_method(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_payment_method: #{e}"
end
```

#### Using the create_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_payment_method_with_http_info(opts)

```ruby
begin
  # Create a Payment Method
  data, status_code, headers = api_instance.create_payment_method_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_payment_method_params** | [**CreatePaymentMethodParams**](CreatePaymentMethodParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_payment_method

> delete_payment_method(id)

Delete a Payment Method

Deletes a Payment Method

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PaymentMethodsApi.new
id = 'id_example' # String | 

begin
  # Delete a Payment Method
  api_instance.delete_payment_method(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_payment_method: #{e}"
end
```

#### Using the delete_payment_method_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payment_method_with_http_info(id)

```ruby
begin
  # Delete a Payment Method
  data, status_code, headers = api_instance.delete_payment_method_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_payment_method_with_http_info: #{e}"
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


## payment_methods_list

> <ResourcesList> payment_methods_list(opts)

Return a list of Payment Methods

Returns a list of Payment Methods

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PaymentMethodsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'stores', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_name: 'Stripe' # String | 
}

begin
  # Return a list of Payment Methods
  result = api_instance.payment_methods_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->payment_methods_list: #{e}"
end
```

#### Using the payment_methods_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> payment_methods_list_with_http_info(opts)

```ruby
begin
  # Return a list of Payment Methods
  data, status_code, headers = api_instance.payment_methods_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->payment_methods_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_name** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_payment_method

> <Resource> show_payment_method(id, opts)

Return a Payment Method

Returns a Payment Method

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PaymentMethodsApi.new
id = 'id_example' # String | 
opts = {
  include: 'stores' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Payment Method
  result = api_instance.show_payment_method(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->show_payment_method: #{e}"
end
```

#### Using the show_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_payment_method_with_http_info(id, opts)

```ruby
begin
  # Return a Payment Method
  data, status_code, headers = api_instance.show_payment_method_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->show_payment_method_with_http_info: #{e}"
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


## update_payment_method

> <Resource> update_payment_method(id, opts)

Update a Payment Method

Updates a Payment Method

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PaymentMethodsApi.new
id = 'id_example' # String | 
opts = {
  include: 'stores', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_payment_method_request: SpreeClient::UpdatePaymentMethodParams.new({payment_method: SpreeClient::UpdatePaymentMethodParamsPaymentMethod.new}) # UpdatePaymentMethodRequest | 
}

begin
  # Update a Payment Method
  result = api_instance.update_payment_method(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_method: #{e}"
end
```

#### Using the update_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_payment_method_with_http_info(id, opts)

```ruby
begin
  # Update a Payment Method
  data, status_code, headers = api_instance.update_payment_method_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_payment_method_request** | [**UpdatePaymentMethodRequest**](UpdatePaymentMethodRequest.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

