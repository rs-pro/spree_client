# SpreeClient::DataFeedsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_data_feed**](DataFeedsApi.md#create_data_feed) | **POST** /api/v2/platform/data_feeds | Create a Data Feed |
| [**data_feeds_list**](DataFeedsApi.md#data_feeds_list) | **GET** /api/v2/platform/data_feeds | Return a list of Data Feeds |
| [**delete_data_feed**](DataFeedsApi.md#delete_data_feed) | **DELETE** /api/v2/platform/data_feeds/{id} | Delete a Data Feed |
| [**show_data_feed**](DataFeedsApi.md#show_data_feed) | **GET** /api/v2/platform/data_feeds/{id} | Return a Data Feed |
| [**update_data_feed**](DataFeedsApi.md#update_data_feed) | **PATCH** /api/v2/platform/data_feeds/{id} | Update a Data Feed |


## create_data_feed

> <Resource> create_data_feed(opts)

Create a Data Feed

Creates a Data Feed

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DataFeedsApi.new
opts = {
  create_data_feed_params: SpreeClient::CreateDataFeedParams.new # CreateDataFeedParams | 
}

begin
  # Create a Data Feed
  result = api_instance.create_data_feed(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling DataFeedsApi->create_data_feed: #{e}"
end
```

#### Using the create_data_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_data_feed_with_http_info(opts)

```ruby
begin
  # Create a Data Feed
  data, status_code, headers = api_instance.create_data_feed_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling DataFeedsApi->create_data_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_data_feed_params** | [**CreateDataFeedParams**](CreateDataFeedParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## data_feeds_list

> <ResourcesList> data_feeds_list(opts)

Return a list of Data Feeds

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DataFeedsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50 # Integer | 
}

begin
  # Return a list of Data Feeds
  result = api_instance.data_feeds_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling DataFeedsApi->data_feeds_list: #{e}"
end
```

#### Using the data_feeds_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> data_feeds_list_with_http_info(opts)

```ruby
begin
  # Return a list of Data Feeds
  data, status_code, headers = api_instance.data_feeds_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling DataFeedsApi->data_feeds_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## delete_data_feed

> delete_data_feed(id)

Delete a Data Feed

Deletes a Data Feed

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DataFeedsApi.new
id = 'id_example' # String | 

begin
  # Delete a Data Feed
  api_instance.delete_data_feed(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling DataFeedsApi->delete_data_feed: #{e}"
end
```

#### Using the delete_data_feed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_data_feed_with_http_info(id)

```ruby
begin
  # Delete a Data Feed
  data, status_code, headers = api_instance.delete_data_feed_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling DataFeedsApi->delete_data_feed_with_http_info: #{e}"
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


## show_data_feed

> <Resource> show_data_feed(id)

Return a Data Feed

Returns a Data Feed

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DataFeedsApi.new
id = 'id_example' # String | 

begin
  # Return a Data Feed
  result = api_instance.show_data_feed(id)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling DataFeedsApi->show_data_feed: #{e}"
end
```

#### Using the show_data_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_data_feed_with_http_info(id)

```ruby
begin
  # Return a Data Feed
  data, status_code, headers = api_instance.show_data_feed_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling DataFeedsApi->show_data_feed_with_http_info: #{e}"
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


## update_data_feed

> <Resource> update_data_feed(id, opts)

Update a Data Feed

Updates a Data Feed

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DataFeedsApi.new
id = 'id_example' # String | 
opts = {
  update_data_feed_params: SpreeClient::UpdateDataFeedParams.new # UpdateDataFeedParams | 
}

begin
  # Update a Data Feed
  result = api_instance.update_data_feed(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling DataFeedsApi->update_data_feed: #{e}"
end
```

#### Using the update_data_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_data_feed_with_http_info(id, opts)

```ruby
begin
  # Update a Data Feed
  data, status_code, headers = api_instance.update_data_feed_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling DataFeedsApi->update_data_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_data_feed_params** | [**UpdateDataFeedParams**](UpdateDataFeedParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

