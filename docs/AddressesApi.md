# SpreeClient::AddressesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**addresses_list**](AddressesApi.md#addresses_list) | **GET** /api/v2/platform/addresses | Return a list of Addresses |
| [**create_address**](AddressesApi.md#create_address) | **POST** /api/v2/platform/addresses | Create an Address |
| [**delete_address**](AddressesApi.md#delete_address) | **DELETE** /api/v2/platform/addresses/{id} | Delete an Address |
| [**show_address**](AddressesApi.md#show_address) | **GET** /api/v2/platform/addresses/{id} | Return an Address |
| [**update_address**](AddressesApi.md#update_address) | **PATCH** /api/v2/platform/addresses/{id} | Update an Address |


## addresses_list

> <ResourcesList> addresses_list(opts)

Return a list of Addresses

Returns a list of Addresses

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::AddressesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'user,country,state', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_user_id_eq: '1', # String | 
  filter_firstname_cont: 'John' # String | 
}

begin
  # Return a list of Addresses
  result = api_instance.addresses_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling AddressesApi->addresses_list: #{e}"
end
```

#### Using the addresses_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> addresses_list_with_http_info(opts)

```ruby
begin
  # Return a list of Addresses
  data, status_code, headers = api_instance.addresses_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling AddressesApi->addresses_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_user_id_eq** | **String** |  | [optional] |
| **filter_firstname_cont** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## create_address

> <Resource> create_address(opts)

Create an Address

Creates an Address

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::AddressesApi.new
opts = {
  include: 'user,country,state', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_address_params: SpreeClient::CreateAddressParams.new({address: SpreeClient::CreateAddressParamsAddress.new({country_id: '224', address1: '5th ave', city: 'NY', zipcode: '10001', phone: '+1 123 456 789', firstname: 'John', lastname: 'Snow'})}) # CreateAddressParams | 
}

begin
  # Create an Address
  result = api_instance.create_address(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling AddressesApi->create_address: #{e}"
end
```

#### Using the create_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_address_with_http_info(opts)

```ruby
begin
  # Create an Address
  data, status_code, headers = api_instance.create_address_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling AddressesApi->create_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_address_params** | [**CreateAddressParams**](CreateAddressParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_address

> delete_address(id)

Delete an Address

Deletes an Address

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::AddressesApi.new
id = 'id_example' # String | 

begin
  # Delete an Address
  api_instance.delete_address(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling AddressesApi->delete_address: #{e}"
end
```

#### Using the delete_address_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_address_with_http_info(id)

```ruby
begin
  # Delete an Address
  data, status_code, headers = api_instance.delete_address_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling AddressesApi->delete_address_with_http_info: #{e}"
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


## show_address

> <Resource> show_address(id, opts)

Return an Address

Returns an Address

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::AddressesApi.new
id = 'id_example' # String | 
opts = {
  include: 'user,country,state' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return an Address
  result = api_instance.show_address(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling AddressesApi->show_address: #{e}"
end
```

#### Using the show_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_address_with_http_info(id, opts)

```ruby
begin
  # Return an Address
  data, status_code, headers = api_instance.show_address_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling AddressesApi->show_address_with_http_info: #{e}"
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


## update_address

> <Resource> update_address(id, opts)

Update an Address

Updates an Address

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::AddressesApi.new
id = 'id_example' # String | 
opts = {
  include: 'user,country,state', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_address_params: SpreeClient::UpdateAddressParams.new({address: SpreeClient::UpdateAddressParamsAddress.new}) # UpdateAddressParams | 
}

begin
  # Update an Address
  result = api_instance.update_address(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling AddressesApi->update_address: #{e}"
end
```

#### Using the update_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_address_with_http_info(id, opts)

```ruby
begin
  # Update an Address
  data, status_code, headers = api_instance.update_address_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling AddressesApi->update_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_address_params** | [**UpdateAddressParams**](UpdateAddressParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

