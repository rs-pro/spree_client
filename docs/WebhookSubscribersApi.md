# SpreeClient::WebhookSubscribersApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook_subscriber**](WebhookSubscribersApi.md#create_webhook_subscriber) | **POST** /api/v2/platform/webhooks/subscribers | Create a Webhook Subscriber |
| [**delete_webhook_subscriber**](WebhookSubscribersApi.md#delete_webhook_subscriber) | **DELETE** /api/v2/platform/webhooks/subscribers/{id} | Delete a Webhook Subscriber |
| [**show_webhook_subscriber**](WebhookSubscribersApi.md#show_webhook_subscriber) | **GET** /api/v2/platform/webhooks/subscribers/{id} | Return a Webhook Subscriber |
| [**update_webhook_subscriber**](WebhookSubscribersApi.md#update_webhook_subscriber) | **PATCH** /api/v2/platform/webhooks/subscribers/{id} | Update a Webhook Subscriber |
| [**webhook_subscribers_list**](WebhookSubscribersApi.md#webhook_subscribers_list) | **GET** /api/v2/platform/webhooks/subscribers | Return a list of Webhook Subscribers |


## create_webhook_subscriber

> <Resource> create_webhook_subscriber(opts)

Create a Webhook Subscriber

Creates a Webhook Subscriber

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WebhookSubscribersApi.new
opts = {
  create_webhook_subscriber_params: SpreeClient::CreateWebhookSubscriberParams.new({subscriber: SpreeClient::CreateWebhookSubscriberParamsSubscriber.new({url: 'https://www.url.com/'})}) # CreateWebhookSubscriberParams | 
}

begin
  # Create a Webhook Subscriber
  result = api_instance.create_webhook_subscriber(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling WebhookSubscribersApi->create_webhook_subscriber: #{e}"
end
```

#### Using the create_webhook_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_webhook_subscriber_with_http_info(opts)

```ruby
begin
  # Create a Webhook Subscriber
  data, status_code, headers = api_instance.create_webhook_subscriber_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling WebhookSubscribersApi->create_webhook_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_webhook_subscriber_params** | [**CreateWebhookSubscriberParams**](CreateWebhookSubscriberParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_webhook_subscriber

> delete_webhook_subscriber(id)

Delete a Webhook Subscriber

Deletes a Webhook Subscriber

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WebhookSubscribersApi.new
id = 'id_example' # String | 

begin
  # Delete a Webhook Subscriber
  api_instance.delete_webhook_subscriber(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling WebhookSubscribersApi->delete_webhook_subscriber: #{e}"
end
```

#### Using the delete_webhook_subscriber_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhook_subscriber_with_http_info(id)

```ruby
begin
  # Delete a Webhook Subscriber
  data, status_code, headers = api_instance.delete_webhook_subscriber_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling WebhookSubscribersApi->delete_webhook_subscriber_with_http_info: #{e}"
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


## show_webhook_subscriber

> <Resource> show_webhook_subscriber(id)

Return a Webhook Subscriber

Returns a Webhook Subscriber

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WebhookSubscribersApi.new
id = 'id_example' # String | 

begin
  # Return a Webhook Subscriber
  result = api_instance.show_webhook_subscriber(id)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling WebhookSubscribersApi->show_webhook_subscriber: #{e}"
end
```

#### Using the show_webhook_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_webhook_subscriber_with_http_info(id)

```ruby
begin
  # Return a Webhook Subscriber
  data, status_code, headers = api_instance.show_webhook_subscriber_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling WebhookSubscribersApi->show_webhook_subscriber_with_http_info: #{e}"
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


## update_webhook_subscriber

> <Resource> update_webhook_subscriber(id, opts)

Update a Webhook Subscriber

Updates a Webhook Subscriber

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WebhookSubscribersApi.new
id = 'id_example' # String | 
opts = {
  update_webhook_subscriber_params: SpreeClient::UpdateWebhookSubscriberParams.new({subscriber: SpreeClient::CreateWebhookSubscriberParamsSubscriber.new({url: 'https://www.url.com/'})}) # UpdateWebhookSubscriberParams | 
}

begin
  # Update a Webhook Subscriber
  result = api_instance.update_webhook_subscriber(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling WebhookSubscribersApi->update_webhook_subscriber: #{e}"
end
```

#### Using the update_webhook_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_webhook_subscriber_with_http_info(id, opts)

```ruby
begin
  # Update a Webhook Subscriber
  data, status_code, headers = api_instance.update_webhook_subscriber_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling WebhookSubscribersApi->update_webhook_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_webhook_subscriber_params** | [**UpdateWebhookSubscriberParams**](UpdateWebhookSubscriberParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## webhook_subscribers_list

> <ResourcesList> webhook_subscribers_list(opts)

Return a list of Webhook Subscribers

Returns a list of Webhook Subscribers

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WebhookSubscribersApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  filter_active_eq: 'true', # String | 
  filter_url_cont: 'mysite' # String | 
}

begin
  # Return a list of Webhook Subscribers
  result = api_instance.webhook_subscribers_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling WebhookSubscribersApi->webhook_subscribers_list: #{e}"
end
```

#### Using the webhook_subscribers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> webhook_subscribers_list_with_http_info(opts)

```ruby
begin
  # Return a list of Webhook Subscribers
  data, status_code, headers = api_instance.webhook_subscribers_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling WebhookSubscribersApi->webhook_subscribers_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **filter_active_eq** | **String** |  | [optional] |
| **filter_url_cont** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json

