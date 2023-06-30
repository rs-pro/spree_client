# SpreeClient::WebhookEventsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**webhook_events_list**](WebhookEventsApi.md#webhook_events_list) | **GET** /api/v2/platform/webhooks/events | Return a list of Webhook Events |


## webhook_events_list

> <ResourcesList> webhook_events_list(opts)

Return a list of Webhook Events

Returns a list of Webhook Events

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WebhookEventsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'subscriber', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_name_eq: 'order.canceled', # String | 
  filter_request_errors_cont: 'google', # String | 
  filter_response_code_eq: '200', # String | 
  filter_success_eq: 'true', # String | 
  filter_url_cont: 'mysite' # String | 
}

begin
  # Return a list of Webhook Events
  result = api_instance.webhook_events_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling WebhookEventsApi->webhook_events_list: #{e}"
end
```

#### Using the webhook_events_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> webhook_events_list_with_http_info(opts)

```ruby
begin
  # Return a list of Webhook Events
  data, status_code, headers = api_instance.webhook_events_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling WebhookEventsApi->webhook_events_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_name_eq** | **String** |  | [optional] |
| **filter_request_errors_cont** | **String** |  | [optional] |
| **filter_response_code_eq** | **String** |  | [optional] |
| **filter_success_eq** | **String** |  | [optional] |
| **filter_url_cont** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json

