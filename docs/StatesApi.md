# SpreeClient::StatesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**show_state**](StatesApi.md#show_state) | **GET** /api/v2/platform/states/{id} | Returns a State |
| [**states_list**](StatesApi.md#states_list) | **GET** /api/v2/platform/states | Returns a list of States |


## show_state

> <Resource> show_state(id)

Returns a State

Returns a State

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StatesApi.new
id = 'id_example' # String | 

begin
  # Returns a State
  result = api_instance.show_state(id)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StatesApi->show_state: #{e}"
end
```

#### Using the show_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_state_with_http_info(id)

```ruby
begin
  # Returns a State
  data, status_code, headers = api_instance.show_state_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StatesApi->show_state_with_http_info: #{e}"
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


## states_list

> <ResourcesList> states_list(opts)

Returns a list of States

Returns a list of States

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StatesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'country', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_country_id_eq: '4' # String | 
}

begin
  # Returns a list of States
  result = api_instance.states_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StatesApi->states_list: #{e}"
end
```

#### Using the states_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> states_list_with_http_info(opts)

```ruby
begin
  # Returns a list of States
  data, status_code, headers = api_instance.states_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling StatesApi->states_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_country_id_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json

