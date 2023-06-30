# SpreeClient::PaymentsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_payment**](PaymentsApi.md#delete_payment) | **DELETE** /api/v2/platform/payments/{id} | Delete a Payment |
| [**payments_list**](PaymentsApi.md#payments_list) | **GET** /api/v2/platform/payments | Return a list of Payments |
| [**show_payment**](PaymentsApi.md#show_payment) | **GET** /api/v2/platform/payments/{id} | Return a Payment |


## delete_payment

> delete_payment(id)

Delete a Payment

Deletes a Payment

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PaymentsApi.new
id = 'id_example' # String | 

begin
  # Delete a Payment
  api_instance.delete_payment(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentsApi->delete_payment: #{e}"
end
```

#### Using the delete_payment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payment_with_http_info(id)

```ruby
begin
  # Delete a Payment
  data, status_code, headers = api_instance.delete_payment_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentsApi->delete_payment_with_http_info: #{e}"
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


## payments_list

> <ResourcesList> payments_list(opts)

Return a list of Payments

Returns a list of Payments

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PaymentsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'payment_method,order,source', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_payment_method_id_eq: '1', # String | 
  filter_amount_gteq: '99.90' # String | 
}

begin
  # Return a list of Payments
  result = api_instance.payments_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentsApi->payments_list: #{e}"
end
```

#### Using the payments_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> payments_list_with_http_info(opts)

```ruby
begin
  # Return a list of Payments
  data, status_code, headers = api_instance.payments_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentsApi->payments_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_payment_method_id_eq** | **String** |  | [optional] |
| **filter_amount_gteq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_payment

> <Resource> show_payment(id, opts)

Return a Payment

Returns a Payment

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PaymentsApi.new
id = 'id_example' # String | 
opts = {
  include: 'payment_method,order,source' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Payment
  result = api_instance.show_payment(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentsApi->show_payment: #{e}"
end
```

#### Using the show_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_payment_with_http_info(id, opts)

```ruby
begin
  # Return a Payment
  data, status_code, headers = api_instance.show_payment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PaymentsApi->show_payment_with_http_info: #{e}"
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

