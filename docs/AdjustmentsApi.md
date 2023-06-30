# SpreeClient::AdjustmentsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**adjustments_list**](AdjustmentsApi.md#adjustments_list) | **GET** /api/v2/platform/adjustments | Return a list of Adjustments |
| [**create_adjustment**](AdjustmentsApi.md#create_adjustment) | **POST** /api/v2/platform/adjustments | Create an Adjustment |
| [**delete_adjustment**](AdjustmentsApi.md#delete_adjustment) | **DELETE** /api/v2/platform/adjustments/{id} | Delete an Adjustment |
| [**show_adjustment**](AdjustmentsApi.md#show_adjustment) | **GET** /api/v2/platform/adjustments/{id} | Return an Adjustment |
| [**update_adjustment**](AdjustmentsApi.md#update_adjustment) | **PATCH** /api/v2/platform/adjustments/{id} | Update an Adjustment |


## adjustments_list

> <ResourcesList> adjustments_list(opts)

Return a list of Adjustments

Returns a list of Adjustments

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::AdjustmentsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'order,adjustable', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_order_id: '1234' # String | 
}

begin
  # Return a list of Adjustments
  result = api_instance.adjustments_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling AdjustmentsApi->adjustments_list: #{e}"
end
```

#### Using the adjustments_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> adjustments_list_with_http_info(opts)

```ruby
begin
  # Return a list of Adjustments
  data, status_code, headers = api_instance.adjustments_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling AdjustmentsApi->adjustments_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_order_id** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## create_adjustment

> <Resource> create_adjustment(opts)

Create an Adjustment

Creates an Adjustment

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::AdjustmentsApi.new
opts = {
  include: 'order,adjustable', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_adjustment_params: SpreeClient::CreateAdjustmentParams.new({adjustment: SpreeClient::CreateAdjustmentParamsAdjustment.new({order_id: 'order_id_example', label: 'Shipping costs', adjustable_id: 'adjustable_id_example', adjustable_type: 'Spree::LineItem'})}) # CreateAdjustmentParams | 
}

begin
  # Create an Adjustment
  result = api_instance.create_adjustment(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling AdjustmentsApi->create_adjustment: #{e}"
end
```

#### Using the create_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_adjustment_with_http_info(opts)

```ruby
begin
  # Create an Adjustment
  data, status_code, headers = api_instance.create_adjustment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling AdjustmentsApi->create_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_adjustment_params** | [**CreateAdjustmentParams**](CreateAdjustmentParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_adjustment

> delete_adjustment(id)

Delete an Adjustment

Deletes an Adjustment

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::AdjustmentsApi.new
id = 'id_example' # String | 

begin
  # Delete an Adjustment
  api_instance.delete_adjustment(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling AdjustmentsApi->delete_adjustment: #{e}"
end
```

#### Using the delete_adjustment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_adjustment_with_http_info(id)

```ruby
begin
  # Delete an Adjustment
  data, status_code, headers = api_instance.delete_adjustment_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling AdjustmentsApi->delete_adjustment_with_http_info: #{e}"
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


## show_adjustment

> <Resource> show_adjustment(id, opts)

Return an Adjustment

Returns an Adjustment

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::AdjustmentsApi.new
id = 'id_example' # String | 
opts = {
  include: 'order,adjustable' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return an Adjustment
  result = api_instance.show_adjustment(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling AdjustmentsApi->show_adjustment: #{e}"
end
```

#### Using the show_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_adjustment_with_http_info(id, opts)

```ruby
begin
  # Return an Adjustment
  data, status_code, headers = api_instance.show_adjustment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling AdjustmentsApi->show_adjustment_with_http_info: #{e}"
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


## update_adjustment

> <Resource> update_adjustment(id, opts)

Update an Adjustment

Updates an Adjustment

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::AdjustmentsApi.new
id = 'id_example' # String | 
opts = {
  include: 'order,adjustable', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_adjustment_params: SpreeClient::UpdateAdjustmentParams.new({adjustment: SpreeClient::UpdateAdjustmentParamsAdjustment.new}) # UpdateAdjustmentParams | 
}

begin
  # Update an Adjustment
  result = api_instance.update_adjustment(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling AdjustmentsApi->update_adjustment: #{e}"
end
```

#### Using the update_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_adjustment_with_http_info(id, opts)

```ruby
begin
  # Update an Adjustment
  data, status_code, headers = api_instance.update_adjustment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling AdjustmentsApi->update_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_adjustment_params** | [**UpdateAdjustmentParams**](UpdateAdjustmentParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

