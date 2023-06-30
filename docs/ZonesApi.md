# SpreeClient::ZonesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_zone**](ZonesApi.md#create_zone) | **POST** /api/v2/platform/zones | Create a Zone |
| [**delete_zone**](ZonesApi.md#delete_zone) | **DELETE** /api/v2/platform/zones/{id} | Delete a Zone |
| [**show_zone**](ZonesApi.md#show_zone) | **GET** /api/v2/platform/zones/{id} | Return a Zone |
| [**update_zone**](ZonesApi.md#update_zone) | **PATCH** /api/v2/platform/zones/{id} | Update a Zone |
| [**zones_list**](ZonesApi.md#zones_list) | **GET** /api/v2/platform/zones | Return a list of Zones |


## create_zone

> <Resource> create_zone(opts)

Create a Zone

Creates a Zone

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ZonesApi.new
opts = {
  include: 'zone_members', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_zone_params: SpreeClient::CreateZoneParams.new({zone: SpreeClient::CreateZoneParamsZone.new({name: 'EU'})}) # CreateZoneParams | 
}

begin
  # Create a Zone
  result = api_instance.create_zone(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ZonesApi->create_zone: #{e}"
end
```

#### Using the create_zone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_zone_with_http_info(opts)

```ruby
begin
  # Create a Zone
  data, status_code, headers = api_instance.create_zone_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ZonesApi->create_zone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_zone_params** | [**CreateZoneParams**](CreateZoneParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_zone

> delete_zone(id)

Delete a Zone

Deletes a Zone

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ZonesApi.new
id = 'id_example' # String | 

begin
  # Delete a Zone
  api_instance.delete_zone(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling ZonesApi->delete_zone: #{e}"
end
```

#### Using the delete_zone_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_zone_with_http_info(id)

```ruby
begin
  # Delete a Zone
  data, status_code, headers = api_instance.delete_zone_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling ZonesApi->delete_zone_with_http_info: #{e}"
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


## show_zone

> <Resource> show_zone(id, opts)

Return a Zone

Returns a Zone

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ZonesApi.new
id = 'id_example' # String | 
opts = {
  include: 'zone_members' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Zone
  result = api_instance.show_zone(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ZonesApi->show_zone: #{e}"
end
```

#### Using the show_zone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_zone_with_http_info(id, opts)

```ruby
begin
  # Return a Zone
  data, status_code, headers = api_instance.show_zone_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ZonesApi->show_zone_with_http_info: #{e}"
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


## update_zone

> <Resource> update_zone(id, opts)

Update a Zone

Updates a Zone

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ZonesApi.new
id = 'id_example' # String | 
opts = {
  include: 'zone_members', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_zone_params: SpreeClient::UpdateZoneParams.new # UpdateZoneParams | 
}

begin
  # Update a Zone
  result = api_instance.update_zone(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ZonesApi->update_zone: #{e}"
end
```

#### Using the update_zone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_zone_with_http_info(id, opts)

```ruby
begin
  # Update a Zone
  data, status_code, headers = api_instance.update_zone_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ZonesApi->update_zone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_zone_params** | [**UpdateZoneParams**](UpdateZoneParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## zones_list

> <ResourcesList> zones_list(opts)

Return a list of Zones

Returns a list of Zones

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ZonesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'zone_members', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_description_eq: 'The zone containing all EU countries' # String | 
}

begin
  # Return a list of Zones
  result = api_instance.zones_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ZonesApi->zones_list: #{e}"
end
```

#### Using the zones_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> zones_list_with_http_info(opts)

```ruby
begin
  # Return a list of Zones
  data, status_code, headers = api_instance.zones_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling ZonesApi->zones_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_description_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json

