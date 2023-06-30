# SpreeClient::ClassificationsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**classifications_list**](ClassificationsApi.md#classifications_list) | **GET** /api/v2/platform/classifications | Return a list of Classifications |
| [**create_classification**](ClassificationsApi.md#create_classification) | **POST** /api/v2/platform/classifications | Create a Classification |
| [**delete_classification**](ClassificationsApi.md#delete_classification) | **DELETE** /api/v2/platform/classifications/{id} | Delete a Classification |
| [**show_classification**](ClassificationsApi.md#show_classification) | **GET** /api/v2/platform/classifications/{id} | Return a Classification |
| [**update_classification**](ClassificationsApi.md#update_classification) | **PATCH** /api/v2/platform/classifications/{id} | Update a Classification |


## classifications_list

> <ResourcesList> classifications_list(opts)

Return a list of Classifications

Returns a list of Classifications

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ClassificationsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'product,taxon', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_taxon_id_eq: '1' # String | 
}

begin
  # Return a list of Classifications
  result = api_instance.classifications_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ClassificationsApi->classifications_list: #{e}"
end
```

#### Using the classifications_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> classifications_list_with_http_info(opts)

```ruby
begin
  # Return a list of Classifications
  data, status_code, headers = api_instance.classifications_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling ClassificationsApi->classifications_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_taxon_id_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## create_classification

> <Resource> create_classification(opts)

Create a Classification

Creates a Classification

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ClassificationsApi.new
opts = {
  include: 'product,taxon', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_classification_params: SpreeClient::CreateClassificationParams.new({classification: SpreeClient::CreateClassificationParamsClassification.new({product_id: '1', taxon_id: '1', position: 1})}) # CreateClassificationParams | 
}

begin
  # Create a Classification
  result = api_instance.create_classification(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ClassificationsApi->create_classification: #{e}"
end
```

#### Using the create_classification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_classification_with_http_info(opts)

```ruby
begin
  # Create a Classification
  data, status_code, headers = api_instance.create_classification_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ClassificationsApi->create_classification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_classification_params** | [**CreateClassificationParams**](CreateClassificationParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_classification

> delete_classification(id)

Delete a Classification

Deletes a Classification

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ClassificationsApi.new
id = 'id_example' # String | 

begin
  # Delete a Classification
  api_instance.delete_classification(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling ClassificationsApi->delete_classification: #{e}"
end
```

#### Using the delete_classification_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_classification_with_http_info(id)

```ruby
begin
  # Delete a Classification
  data, status_code, headers = api_instance.delete_classification_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling ClassificationsApi->delete_classification_with_http_info: #{e}"
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


## show_classification

> <Resource> show_classification(id, opts)

Return a Classification

Returns a Classification

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ClassificationsApi.new
id = 'id_example' # String | 
opts = {
  include: 'product,taxon' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Classification
  result = api_instance.show_classification(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ClassificationsApi->show_classification: #{e}"
end
```

#### Using the show_classification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_classification_with_http_info(id, opts)

```ruby
begin
  # Return a Classification
  data, status_code, headers = api_instance.show_classification_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ClassificationsApi->show_classification_with_http_info: #{e}"
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


## update_classification

> <Resource> update_classification(id, opts)

Update a Classification

Updates a Classification

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ClassificationsApi.new
id = 'id_example' # String | 
opts = {
  include: 'product,taxon', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_classification_params: SpreeClient::UpdateClassificationParams.new({classification: SpreeClient::UpdateClassificationParamsClassification.new}) # UpdateClassificationParams | 
}

begin
  # Update a Classification
  result = api_instance.update_classification(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ClassificationsApi->update_classification: #{e}"
end
```

#### Using the update_classification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_classification_with_http_info(id, opts)

```ruby
begin
  # Update a Classification
  data, status_code, headers = api_instance.update_classification_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ClassificationsApi->update_classification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_classification_params** | [**UpdateClassificationParams**](UpdateClassificationParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

