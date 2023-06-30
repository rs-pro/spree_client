# SpreeClient::OptionValuesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_option_value**](OptionValuesApi.md#create_option_value) | **POST** /api/v2/platform/option_values | Create an Option Value |
| [**delete_option_value**](OptionValuesApi.md#delete_option_value) | **DELETE** /api/v2/platform/option_values/{id} | Delete an Option Value |
| [**option_values_list**](OptionValuesApi.md#option_values_list) | **GET** /api/v2/platform/option_values | Return a list of Option Values |
| [**show_option_value**](OptionValuesApi.md#show_option_value) | **GET** /api/v2/platform/option_values/{id} | Return an Option Value |
| [**update_option_value**](OptionValuesApi.md#update_option_value) | **PATCH** /api/v2/platform/option_values/{id} | Update an Option Value |


## create_option_value

> <Resource> create_option_value(opts)

Create an Option Value

Creates an Option Value

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OptionValuesApi.new
opts = {
  include: 'option_type', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_option_value_params: SpreeClient::CreateOptionValueParams.new({option_value: SpreeClient::CreateOptionValueParamsOptionValue.new({name: 'red', presentation: 'Red'})}) # CreateOptionValueParams | 
}

begin
  # Create an Option Value
  result = api_instance.create_option_value(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionValuesApi->create_option_value: #{e}"
end
```

#### Using the create_option_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_option_value_with_http_info(opts)

```ruby
begin
  # Create an Option Value
  data, status_code, headers = api_instance.create_option_value_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionValuesApi->create_option_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_option_value_params** | [**CreateOptionValueParams**](CreateOptionValueParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_option_value

> delete_option_value(id)

Delete an Option Value

Deletes an Option Value

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OptionValuesApi.new
id = 'id_example' # String | 

begin
  # Delete an Option Value
  api_instance.delete_option_value(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionValuesApi->delete_option_value: #{e}"
end
```

#### Using the delete_option_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_option_value_with_http_info(id)

```ruby
begin
  # Delete an Option Value
  data, status_code, headers = api_instance.delete_option_value_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionValuesApi->delete_option_value_with_http_info: #{e}"
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


## option_values_list

> <ResourcesList> option_values_list(opts)

Return a list of Option Values

Returns a list of Option Values

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OptionValuesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'option_type', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_option_type_id_eq: '1', # String | 
  filter_name_cont: 'Red' # String | 
}

begin
  # Return a list of Option Values
  result = api_instance.option_values_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionValuesApi->option_values_list: #{e}"
end
```

#### Using the option_values_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> option_values_list_with_http_info(opts)

```ruby
begin
  # Return a list of Option Values
  data, status_code, headers = api_instance.option_values_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionValuesApi->option_values_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_option_type_id_eq** | **String** |  | [optional] |
| **filter_name_cont** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_option_value

> <Resource> show_option_value(id, opts)

Return an Option Value

Returns an Option Value

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OptionValuesApi.new
id = 'id_example' # String | 
opts = {
  include: 'option_type' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return an Option Value
  result = api_instance.show_option_value(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionValuesApi->show_option_value: #{e}"
end
```

#### Using the show_option_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_option_value_with_http_info(id, opts)

```ruby
begin
  # Return an Option Value
  data, status_code, headers = api_instance.show_option_value_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionValuesApi->show_option_value_with_http_info: #{e}"
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


## update_option_value

> <Resource> update_option_value(id, opts)

Update an Option Value

Updates an Option Value

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OptionValuesApi.new
id = 'id_example' # String | 
opts = {
  include: 'option_type', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_option_value_params: SpreeClient::UpdateOptionValueParams.new({option_value: SpreeClient::UpdateOptionValueParamsOptionValue.new}) # UpdateOptionValueParams | 
}

begin
  # Update an Option Value
  result = api_instance.update_option_value(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionValuesApi->update_option_value: #{e}"
end
```

#### Using the update_option_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_option_value_with_http_info(id, opts)

```ruby
begin
  # Update an Option Value
  data, status_code, headers = api_instance.update_option_value_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OptionValuesApi->update_option_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_option_value_params** | [**UpdateOptionValueParams**](UpdateOptionValueParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

