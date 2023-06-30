# SpreeClient::StockLocationsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_stock_location**](StockLocationsApi.md#create_stock_location) | **POST** /api/v2/platform/stock_locations | Create a Stock Location |
| [**delete_stock_location**](StockLocationsApi.md#delete_stock_location) | **DELETE** /api/v2/platform/stock_locations/{id} | Delete a Stock Location |
| [**show_stock_location**](StockLocationsApi.md#show_stock_location) | **GET** /api/v2/platform/stock_locations/{id} | Return a Stock Location |
| [**stock_locations_list**](StockLocationsApi.md#stock_locations_list) | **GET** /api/v2/platform/stock_locations | Return a list of Stock Locations |
| [**update_stock_location**](StockLocationsApi.md#update_stock_location) | **PATCH** /api/v2/platform/stock_locations/{id} | Update a Stock Location |


## create_stock_location

> <Resource> create_stock_location(opts)

Create a Stock Location

Creates a Stock Location

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StockLocationsApi.new
opts = {
  include: 'country', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_stock_location_params: SpreeClient::CreateStockLocationParams.new({stock_location: SpreeClient::CreateStockLocationParamsStockLocation.new({name: 'Warehouse 3'})}) # CreateStockLocationParams | 
}

begin
  # Create a Stock Location
  result = api_instance.create_stock_location(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StockLocationsApi->create_stock_location: #{e}"
end
```

#### Using the create_stock_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_stock_location_with_http_info(opts)

```ruby
begin
  # Create a Stock Location
  data, status_code, headers = api_instance.create_stock_location_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StockLocationsApi->create_stock_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_stock_location_params** | [**CreateStockLocationParams**](CreateStockLocationParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_stock_location

> delete_stock_location(id)

Delete a Stock Location

Deletes a Stock Location

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StockLocationsApi.new
id = 'id_example' # String | 

begin
  # Delete a Stock Location
  api_instance.delete_stock_location(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling StockLocationsApi->delete_stock_location: #{e}"
end
```

#### Using the delete_stock_location_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_stock_location_with_http_info(id)

```ruby
begin
  # Delete a Stock Location
  data, status_code, headers = api_instance.delete_stock_location_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling StockLocationsApi->delete_stock_location_with_http_info: #{e}"
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


## show_stock_location

> <Resource> show_stock_location(id, opts)

Return a Stock Location

Returns a Stock Location

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StockLocationsApi.new
id = 'id_example' # String | 
opts = {
  include: 'country' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Stock Location
  result = api_instance.show_stock_location(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StockLocationsApi->show_stock_location: #{e}"
end
```

#### Using the show_stock_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_stock_location_with_http_info(id, opts)

```ruby
begin
  # Return a Stock Location
  data, status_code, headers = api_instance.show_stock_location_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StockLocationsApi->show_stock_location_with_http_info: #{e}"
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


## stock_locations_list

> <ResourcesList> stock_locations_list(opts)

Return a list of Stock Locations

Returns a list of Stock Locations

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StockLocationsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'country' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a list of Stock Locations
  result = api_instance.stock_locations_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StockLocationsApi->stock_locations_list: #{e}"
end
```

#### Using the stock_locations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> stock_locations_list_with_http_info(opts)

```ruby
begin
  # Return a list of Stock Locations
  data, status_code, headers = api_instance.stock_locations_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling StockLocationsApi->stock_locations_list_with_http_info: #{e}"
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


## update_stock_location

> <Resource> update_stock_location(id, opts)

Update a Stock Location

Updates a Stock Location

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StockLocationsApi.new
id = 'id_example' # String | 
opts = {
  include: 'country', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_stock_location_params: SpreeClient::UpdateStockLocationParams.new({stock_location: SpreeClient::CreateStockLocationParamsStockLocation.new({name: 'Warehouse 3'})}) # UpdateStockLocationParams | 
}

begin
  # Update a Stock Location
  result = api_instance.update_stock_location(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StockLocationsApi->update_stock_location: #{e}"
end
```

#### Using the update_stock_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_stock_location_with_http_info(id, opts)

```ruby
begin
  # Update a Stock Location
  data, status_code, headers = api_instance.update_stock_location_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StockLocationsApi->update_stock_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_stock_location_params** | [**UpdateStockLocationParams**](UpdateStockLocationParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

