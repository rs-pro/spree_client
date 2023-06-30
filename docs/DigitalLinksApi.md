# SpreeClient::DigitalLinksApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_digital_link**](DigitalLinksApi.md#create_digital_link) | **POST** /api/v2/platform/digital_links | Create a Digital Link |
| [**delete_digital_link**](DigitalLinksApi.md#delete_digital_link) | **DELETE** /api/v2/platform/digital_links/{id} | Delete a Digital Link |
| [**digital_links_list**](DigitalLinksApi.md#digital_links_list) | **GET** /api/v2/platform/digital_links | Return a list of Digital Links |
| [**reset_digital_link**](DigitalLinksApi.md#reset_digital_link) | **PATCH** /api/v2/platform/digital_links/{id}/reset | Reset a Digital Link |
| [**show_digital_link**](DigitalLinksApi.md#show_digital_link) | **GET** /api/v2/platform/digital_links/{id} | Return a Digital Link |
| [**update_digital_link**](DigitalLinksApi.md#update_digital_link) | **PATCH** /api/v2/platform/digital_links/{id} | Update a Digital Link |


## create_digital_link

> <Resource> create_digital_link(opts)

Create a Digital Link

Creates a Digital Link

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DigitalLinksApi.new
opts = {
  create_digital_link_params: SpreeClient::CreateDigitalLinkParams.new({digital_link: SpreeClient::CreateDigitalLinkParamsDigitalLink.new({line_item_id: '1', digital_id: '1'})}) # CreateDigitalLinkParams | 
}

begin
  # Create a Digital Link
  result = api_instance.create_digital_link(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalLinksApi->create_digital_link: #{e}"
end
```

#### Using the create_digital_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_digital_link_with_http_info(opts)

```ruby
begin
  # Create a Digital Link
  data, status_code, headers = api_instance.create_digital_link_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalLinksApi->create_digital_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_digital_link_params** | [**CreateDigitalLinkParams**](CreateDigitalLinkParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_digital_link

> delete_digital_link(id)

Delete a Digital Link

Deletes a Digital Link

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DigitalLinksApi.new
id = 'id_example' # String | 

begin
  # Delete a Digital Link
  api_instance.delete_digital_link(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalLinksApi->delete_digital_link: #{e}"
end
```

#### Using the delete_digital_link_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_digital_link_with_http_info(id)

```ruby
begin
  # Delete a Digital Link
  data, status_code, headers = api_instance.delete_digital_link_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalLinksApi->delete_digital_link_with_http_info: #{e}"
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


## digital_links_list

> <ResourcesList> digital_links_list(opts)

Return a list of Digital Links

Returns a list of Digital Links

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DigitalLinksApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50 # Integer | 
}

begin
  # Return a list of Digital Links
  result = api_instance.digital_links_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalLinksApi->digital_links_list: #{e}"
end
```

#### Using the digital_links_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> digital_links_list_with_http_info(opts)

```ruby
begin
  # Return a list of Digital Links
  data, status_code, headers = api_instance.digital_links_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalLinksApi->digital_links_list_with_http_info: #{e}"
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


## reset_digital_link

> <Resource> reset_digital_link(id)

Reset a Digital Link

Resets a digital link, allowing further downloads.

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DigitalLinksApi.new
id = 'id_example' # String | 

begin
  # Reset a Digital Link
  result = api_instance.reset_digital_link(id)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalLinksApi->reset_digital_link: #{e}"
end
```

#### Using the reset_digital_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> reset_digital_link_with_http_info(id)

```ruby
begin
  # Reset a Digital Link
  data, status_code, headers = api_instance.reset_digital_link_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalLinksApi->reset_digital_link_with_http_info: #{e}"
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


## show_digital_link

> <Resource> show_digital_link(id)

Return a Digital Link

Returns a Digital Link

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DigitalLinksApi.new
id = 'id_example' # String | 

begin
  # Return a Digital Link
  result = api_instance.show_digital_link(id)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalLinksApi->show_digital_link: #{e}"
end
```

#### Using the show_digital_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_digital_link_with_http_info(id)

```ruby
begin
  # Return a Digital Link
  data, status_code, headers = api_instance.show_digital_link_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalLinksApi->show_digital_link_with_http_info: #{e}"
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


## update_digital_link

> <Resource> update_digital_link(id, opts)

Update a Digital Link

Updates a Digital Link

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::DigitalLinksApi.new
id = 'id_example' # String | 
opts = {
  update_digital_link_params: SpreeClient::UpdateDigitalLinkParams.new({digital_link: SpreeClient::UpdateDigitalLinkParamsDigitalLink.new}) # UpdateDigitalLinkParams | 
}

begin
  # Update a Digital Link
  result = api_instance.update_digital_link(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalLinksApi->update_digital_link: #{e}"
end
```

#### Using the update_digital_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_digital_link_with_http_info(id, opts)

```ruby
begin
  # Update a Digital Link
  data, status_code, headers = api_instance.update_digital_link_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling DigitalLinksApi->update_digital_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_digital_link_params** | [**UpdateDigitalLinkParams**](UpdateDigitalLinkParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

