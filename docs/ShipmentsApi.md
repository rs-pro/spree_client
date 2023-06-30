# SpreeClient::ShipmentsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_item_shipment**](ShipmentsApi.md#add_item_shipment) | **PATCH** /api/v2/platform/shipments/{id}/add_item | Adds item (Variant) to an existing Shipment |
| [**cancel_shipment**](ShipmentsApi.md#cancel_shipment) | **PATCH** /api/v2/platform/shipments/{id}/cancel | Cancels the Shipment |
| [**create_shipment**](ShipmentsApi.md#create_shipment) | **POST** /api/v2/platform/shipments | Create a Shipment |
| [**delete_shipment**](ShipmentsApi.md#delete_shipment) | **DELETE** /api/v2/platform/shipments/{id} | Delete a Shipment |
| [**pend_shipment**](ShipmentsApi.md#pend_shipment) | **PATCH** /api/v2/platform/shipments/{id}/pend | Moves Shipment back to pending state |
| [**ready_shipment**](ShipmentsApi.md#ready_shipment) | **PATCH** /api/v2/platform/shipments/{id}/ready | Mark Shipment as ready to be shipped |
| [**remove_item_shipment**](ShipmentsApi.md#remove_item_shipment) | **PATCH** /api/v2/platform/shipments/{id}/remove_item | Removes item (Variant) from Shipment |
| [**resume_shipment**](ShipmentsApi.md#resume_shipment) | **PATCH** /api/v2/platform/shipments/{id}/resume | Resumes the Shipment |
| [**ship_shipment**](ShipmentsApi.md#ship_shipment) | **PATCH** /api/v2/platform/shipments/{id}/ship | Mark Shipment as shipped |
| [**shipments_list**](ShipmentsApi.md#shipments_list) | **GET** /api/v2/platform/shipments | Return a list of Shipments |
| [**show_shipment**](ShipmentsApi.md#show_shipment) | **GET** /api/v2/platform/shipments/{id} | Return a Shipment |
| [**update_shipment**](ShipmentsApi.md#update_shipment) | **PATCH** /api/v2/platform/shipments/{id} | Update a Shipment |


## add_item_shipment

> <Resource> add_item_shipment(id, opts)

Adds item (Variant) to an existing Shipment

If selected Variant was already added to Order it will increase the quantity of existing Line Item, if not it will create a new Line Item

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShipmentsApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  add_item_shipment_params: SpreeClient::AddItemShipmentParams.new # AddItemShipmentParams | 
}

begin
  # Adds item (Variant) to an existing Shipment
  result = api_instance.add_item_shipment(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->add_item_shipment: #{e}"
end
```

#### Using the add_item_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> add_item_shipment_with_http_info(id, opts)

```ruby
begin
  # Adds item (Variant) to an existing Shipment
  data, status_code, headers = api_instance.add_item_shipment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->add_item_shipment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **add_item_shipment_params** | [**AddItemShipmentParams**](AddItemShipmentParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## cancel_shipment

> <Resource> cancel_shipment(id, opts)

Cancels the Shipment

Cancels the Shipment

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShipmentsApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Cancels the Shipment
  result = api_instance.cancel_shipment(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->cancel_shipment: #{e}"
end
```

#### Using the cancel_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> cancel_shipment_with_http_info(id, opts)

```ruby
begin
  # Cancels the Shipment
  data, status_code, headers = api_instance.cancel_shipment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->cancel_shipment_with_http_info: #{e}"
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


## create_shipment

> <Resource> create_shipment(opts)

Create a Shipment

Creates a Shipment

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShipmentsApi.new
opts = {
  include: 'line_items,variants,product', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_shipment_params: SpreeClient::CreateShipmentParams.new # CreateShipmentParams | 
}

begin
  # Create a Shipment
  result = api_instance.create_shipment(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->create_shipment: #{e}"
end
```

#### Using the create_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_shipment_with_http_info(opts)

```ruby
begin
  # Create a Shipment
  data, status_code, headers = api_instance.create_shipment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->create_shipment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_shipment_params** | [**CreateShipmentParams**](CreateShipmentParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_shipment

> delete_shipment(id)

Delete a Shipment

Deletes a Shipment

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShipmentsApi.new
id = 'id_example' # String | 

begin
  # Delete a Shipment
  api_instance.delete_shipment(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->delete_shipment: #{e}"
end
```

#### Using the delete_shipment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_shipment_with_http_info(id)

```ruby
begin
  # Delete a Shipment
  data, status_code, headers = api_instance.delete_shipment_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->delete_shipment_with_http_info: #{e}"
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


## pend_shipment

> <Resource> pend_shipment(id, opts)

Moves Shipment back to pending state

Moves Shipment back to pending state

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShipmentsApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Moves Shipment back to pending state
  result = api_instance.pend_shipment(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->pend_shipment: #{e}"
end
```

#### Using the pend_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> pend_shipment_with_http_info(id, opts)

```ruby
begin
  # Moves Shipment back to pending state
  data, status_code, headers = api_instance.pend_shipment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->pend_shipment_with_http_info: #{e}"
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


## ready_shipment

> <Resource> ready_shipment(id, opts)

Mark Shipment as ready to be shipped

Marks Shipment as ready to be shipped

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShipmentsApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Mark Shipment as ready to be shipped
  result = api_instance.ready_shipment(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->ready_shipment: #{e}"
end
```

#### Using the ready_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> ready_shipment_with_http_info(id, opts)

```ruby
begin
  # Mark Shipment as ready to be shipped
  data, status_code, headers = api_instance.ready_shipment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->ready_shipment_with_http_info: #{e}"
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


## remove_item_shipment

> <Resource> remove_item_shipment(id, opts)

Removes item (Variant) from Shipment

If selected Variant is removed completely and Shipment doesn't include any other Line Items, Shipment itself will be deleted

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShipmentsApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  remove_item_shipment_params: SpreeClient::RemoveItemShipmentParams.new # RemoveItemShipmentParams | 
}

begin
  # Removes item (Variant) from Shipment
  result = api_instance.remove_item_shipment(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->remove_item_shipment: #{e}"
end
```

#### Using the remove_item_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> remove_item_shipment_with_http_info(id, opts)

```ruby
begin
  # Removes item (Variant) from Shipment
  data, status_code, headers = api_instance.remove_item_shipment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->remove_item_shipment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **remove_item_shipment_params** | [**RemoveItemShipmentParams**](RemoveItemShipmentParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## resume_shipment

> <Resource> resume_shipment(id, opts)

Resumes the Shipment

Resumes previously canceled Shipment

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShipmentsApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Resumes the Shipment
  result = api_instance.resume_shipment(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->resume_shipment: #{e}"
end
```

#### Using the resume_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> resume_shipment_with_http_info(id, opts)

```ruby
begin
  # Resumes the Shipment
  data, status_code, headers = api_instance.resume_shipment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->resume_shipment_with_http_info: #{e}"
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


## ship_shipment

> <Resource> ship_shipment(id, opts)

Mark Shipment as shipped

Marks Shipment as shipped

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShipmentsApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Mark Shipment as shipped
  result = api_instance.ship_shipment(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->ship_shipment: #{e}"
end
```

#### Using the ship_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> ship_shipment_with_http_info(id, opts)

```ruby
begin
  # Mark Shipment as shipped
  data, status_code, headers = api_instance.ship_shipment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->ship_shipment_with_http_info: #{e}"
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


## shipments_list

> <ResourcesList> shipments_list(opts)

Return a list of Shipments

Returns a list of Shipments

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShipmentsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'line_items,variants,product', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_state_eq: 'complete' # String | 
}

begin
  # Return a list of Shipments
  result = api_instance.shipments_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->shipments_list: #{e}"
end
```

#### Using the shipments_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> shipments_list_with_http_info(opts)

```ruby
begin
  # Return a list of Shipments
  data, status_code, headers = api_instance.shipments_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->shipments_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_state_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_shipment

> <Resource> show_shipment(id, opts)

Return a Shipment

Returns a Shipment

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShipmentsApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Shipment
  result = api_instance.show_shipment(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->show_shipment: #{e}"
end
```

#### Using the show_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_shipment_with_http_info(id, opts)

```ruby
begin
  # Return a Shipment
  data, status_code, headers = api_instance.show_shipment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->show_shipment_with_http_info: #{e}"
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


## update_shipment

> <Resource> update_shipment(id, opts)

Update a Shipment

Updates a Shipment

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::ShipmentsApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_shipment_params: SpreeClient::UpdateShipmentParams.new # UpdateShipmentParams | 
}

begin
  # Update a Shipment
  result = api_instance.update_shipment(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->update_shipment: #{e}"
end
```

#### Using the update_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_shipment_with_http_info(id, opts)

```ruby
begin
  # Update a Shipment
  data, status_code, headers = api_instance.update_shipment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling ShipmentsApi->update_shipment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_shipment_params** | [**UpdateShipmentParams**](UpdateShipmentParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

