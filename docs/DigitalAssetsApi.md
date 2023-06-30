# SpreeClient::DigitalAssetsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_digital**](DigitalAssetsApi.md#create_digital) | **POST** /api/v2/platform/digitals | Create a Digital Asset |
| [**delete_digital**](DigitalAssetsApi.md#delete_digital) | **DELETE** /api/v2/platform/digitals/{id} | Delete a Digital Asset |
| [**digitals_list**](DigitalAssetsApi.md#digitals_list) | **GET** /api/v2/platform/digitals | Return a list of Digital Assets |
| [**show_digital**](DigitalAssetsApi.md#show_digital) | **GET** /api/v2/platform/digitals/{id} | Return a Digital Asset |
| [**update_digital**](DigitalAssetsApi.md#update_digital) | **PATCH** /api/v2/platform/digitals/{id} | Update a Digital Asset |


## create_digital

> <Resource> create_digital(digital_attachment, digital_variant_id, opts)

Create a Digital Asset

Creates a Digital Asset

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DigitalAssetsApi.new
digital_attachment = File.new('/path/to/some/file') # File | 
digital_variant_id = 'digital_variant_id_example' # String | 
opts = {
  include: 'variant' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Create a Digital Asset
  result = api_instance.create_digital(digital_attachment, digital_variant_id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalAssetsApi->create_digital: #{e}"
end
```

#### Using the create_digital_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_digital_with_http_info(digital_attachment, digital_variant_id, opts)

```ruby
begin
  # Create a Digital Asset
  data, status_code, headers = api_instance.create_digital_with_http_info(digital_attachment, digital_variant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalAssetsApi->create_digital_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **digital_attachment** | **File** |  |  |
| **digital_variant_id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/vnd.api+json


## delete_digital

> delete_digital(id)

Delete a Digital Asset

Deletes a Digital Asset

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DigitalAssetsApi.new
id = 'id_example' # String | 

begin
  # Delete a Digital Asset
  api_instance.delete_digital(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalAssetsApi->delete_digital: #{e}"
end
```

#### Using the delete_digital_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_digital_with_http_info(id)

```ruby
begin
  # Delete a Digital Asset
  data, status_code, headers = api_instance.delete_digital_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalAssetsApi->delete_digital_with_http_info: #{e}"
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


## digitals_list

> <ResourcesList> digitals_list(opts)

Return a list of Digital Assets

Returns a list of Digital Assets

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DigitalAssetsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'variant' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a list of Digital Assets
  result = api_instance.digitals_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalAssetsApi->digitals_list: #{e}"
end
```

#### Using the digitals_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> digitals_list_with_http_info(opts)

```ruby
begin
  # Return a list of Digital Assets
  data, status_code, headers = api_instance.digitals_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalAssetsApi->digitals_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_digital

> <Resource> show_digital(id, opts)

Return a Digital Asset

Returns a Digital Asset

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DigitalAssetsApi.new
id = 'id_example' # String | 
opts = {
  include: 'variant' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Digital Asset
  result = api_instance.show_digital(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalAssetsApi->show_digital: #{e}"
end
```

#### Using the show_digital_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_digital_with_http_info(id, opts)

```ruby
begin
  # Return a Digital Asset
  data, status_code, headers = api_instance.show_digital_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalAssetsApi->show_digital_with_http_info: #{e}"
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


## update_digital

> <Resource> update_digital(id, digital_attachment, digital_variant_id, opts)

Update a Digital Asset

Updates a Digital Asset

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DigitalAssetsApi.new
id = 'id_example' # String | 
digital_attachment = File.new('/path/to/some/file') # File | 
digital_variant_id = 'digital_variant_id_example' # String | 
opts = {
  include: 'variant' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Update a Digital Asset
  result = api_instance.update_digital(id, digital_attachment, digital_variant_id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalAssetsApi->update_digital: #{e}"
end
```

#### Using the update_digital_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_digital_with_http_info(id, digital_attachment, digital_variant_id, opts)

```ruby
begin
  # Update a Digital Asset
  data, status_code, headers = api_instance.update_digital_with_http_info(id, digital_attachment, digital_variant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalAssetsApi->update_digital_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **digital_attachment** | **File** |  |  |
| **digital_variant_id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/vnd.api+json

