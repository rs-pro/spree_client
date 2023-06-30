# SpreeClient::OrdersApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**advance_order**](OrdersApi.md#advance_order) | **PATCH** /api/v2/platform/orders/{id}/advance | Advances an Order |
| [**apply_coupon_code_order**](OrdersApi.md#apply_coupon_code_order) | **PATCH** /api/v2/platform/orders/{id}/apply_coupon_code | Apply Coupon Code for an Order |
| [**approve_order**](OrdersApi.md#approve_order) | **PATCH** /api/v2/platform/orders/{id}/approve | Approves an Order |
| [**cancel_order**](OrdersApi.md#cancel_order) | **PATCH** /api/v2/platform/orders/{id}/cancel | Cancels an Order |
| [**complete_order**](OrdersApi.md#complete_order) | **PATCH** /api/v2/platform/orders/{id}/complete | Completes an Order |
| [**create_order**](OrdersApi.md#create_order) | **POST** /api/v2/platform/orders | Creates an Order |
| [**delete_order**](OrdersApi.md#delete_order) | **DELETE** /api/v2/platform/orders/{id} | Delete an Order |
| [**empty_order**](OrdersApi.md#empty_order) | **PATCH** /api/v2/platform/orders/{id}/empty | Empties an Order |
| [**next_order**](OrdersApi.md#next_order) | **PATCH** /api/v2/platform/orders/{id}/next | Next an Order |
| [**orders_list**](OrdersApi.md#orders_list) | **GET** /api/v2/platform/orders | Return a list of Orders |
| [**show_order**](OrdersApi.md#show_order) | **GET** /api/v2/platform/orders/{id} | Return an Order |
| [**update_order**](OrdersApi.md#update_order) | **PATCH** /api/v2/platform/orders/{id} | Update an Order |
| [**use_store_credit_order**](OrdersApi.md#use_store_credit_order) | **PATCH** /api/v2/platform/orders/{id}/use_store_credit | Use Store Credit for an Order |


## advance_order

> <Resource> advance_order(id, opts)

Advances an Order

Advances an Order

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OrdersApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Advances an Order
  result = api_instance.advance_order(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->advance_order: #{e}"
end
```

#### Using the advance_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> advance_order_with_http_info(id, opts)

```ruby
begin
  # Advances an Order
  data, status_code, headers = api_instance.advance_order_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->advance_order_with_http_info: #{e}"
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


## apply_coupon_code_order

> apply_coupon_code_order(id, opts)

Apply Coupon Code for an Order

Creates Store Credit payment for an Order

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OrdersApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  coupon_code_param: SpreeClient::CouponCodeParam.new # CouponCodeParam | 
}

begin
  # Apply Coupon Code for an Order
  api_instance.apply_coupon_code_order(id, opts)
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->apply_coupon_code_order: #{e}"
end
```

#### Using the apply_coupon_code_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> apply_coupon_code_order_with_http_info(id, opts)

```ruby
begin
  # Apply Coupon Code for an Order
  data, status_code, headers = api_instance.apply_coupon_code_order_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->apply_coupon_code_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **coupon_code_param** | [**CouponCodeParam**](CouponCodeParam.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## approve_order

> <Resource> approve_order(id, opts)

Approves an Order

Approves an Order, when using a token created for a user, it will save this user as the approver

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OrdersApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Approves an Order
  result = api_instance.approve_order(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->approve_order: #{e}"
end
```

#### Using the approve_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> approve_order_with_http_info(id, opts)

```ruby
begin
  # Approves an Order
  data, status_code, headers = api_instance.approve_order_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->approve_order_with_http_info: #{e}"
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


## cancel_order

> cancel_order(id, opts)

Cancels an Order

Cancels an Order, when using a token created for a user, it will save this user as the canceler

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OrdersApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Cancels an Order
  api_instance.cancel_order(id, opts)
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->cancel_order: #{e}"
end
```

#### Using the cancel_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> cancel_order_with_http_info(id, opts)

```ruby
begin
  # Cancels an Order
  data, status_code, headers = api_instance.cancel_order_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->cancel_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## complete_order

> <Resource> complete_order(id, opts)

Completes an Order

Marks an Order as completed

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OrdersApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Completes an Order
  result = api_instance.complete_order(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->complete_order: #{e}"
end
```

#### Using the complete_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> complete_order_with_http_info(id, opts)

```ruby
begin
  # Completes an Order
  data, status_code, headers = api_instance.complete_order_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->complete_order_with_http_info: #{e}"
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


## create_order

> <Resource> create_order(opts)

Creates an Order

Creates an Order

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OrdersApi.new
opts = {
  include: 'line_items,variants,product', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_order_params: SpreeClient::CreateOrderParams.new({order: SpreeClient::CreateOrderParamsOrder.new}) # CreateOrderParams | 
}

begin
  # Creates an Order
  result = api_instance.create_order(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->create_order: #{e}"
end
```

#### Using the create_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_order_with_http_info(opts)

```ruby
begin
  # Creates an Order
  data, status_code, headers = api_instance.create_order_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->create_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_order_params** | [**CreateOrderParams**](CreateOrderParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_order

> delete_order(id)

Delete an Order

Deletes an Order

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OrdersApi.new
id = 'id_example' # String | 

begin
  # Delete an Order
  api_instance.delete_order(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->delete_order: #{e}"
end
```

#### Using the delete_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_order_with_http_info(id)

```ruby
begin
  # Delete an Order
  data, status_code, headers = api_instance.delete_order_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->delete_order_with_http_info: #{e}"
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


## empty_order

> <Resource> empty_order(id, opts)

Empties an Order

Removes all line items, promotions, shipment and payments from an Order

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OrdersApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Empties an Order
  result = api_instance.empty_order(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->empty_order: #{e}"
end
```

#### Using the empty_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> empty_order_with_http_info(id, opts)

```ruby
begin
  # Empties an Order
  data, status_code, headers = api_instance.empty_order_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->empty_order_with_http_info: #{e}"
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


## next_order

> <Resource> next_order(id, opts)

Next an Order

Moves an Order to the next state

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OrdersApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Next an Order
  result = api_instance.next_order(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->next_order: #{e}"
end
```

#### Using the next_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> next_order_with_http_info(id, opts)

```ruby
begin
  # Next an Order
  data, status_code, headers = api_instance.next_order_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->next_order_with_http_info: #{e}"
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


## orders_list

> <ResourcesList> orders_list(opts)

Return a list of Orders

Returns a list of Orders

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OrdersApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'line_items,variants,product', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_state_eq: 'complete' # String | 
}

begin
  # Return a list of Orders
  result = api_instance.orders_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->orders_list: #{e}"
end
```

#### Using the orders_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> orders_list_with_http_info(opts)

```ruby
begin
  # Return a list of Orders
  data, status_code, headers = api_instance.orders_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->orders_list_with_http_info: #{e}"
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


## show_order

> <Resource> show_order(id, opts)

Return an Order

Returns an Order

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OrdersApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return an Order
  result = api_instance.show_order(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->show_order: #{e}"
end
```

#### Using the show_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_order_with_http_info(id, opts)

```ruby
begin
  # Return an Order
  data, status_code, headers = api_instance.show_order_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->show_order_with_http_info: #{e}"
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


## update_order

> <Resource> update_order(id, opts)

Update an Order

Updates an Order

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OrdersApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_order_params: SpreeClient::UpdateOrderParams.new({order: SpreeClient::CreateOrderParamsOrder.new}) # UpdateOrderParams | 
}

begin
  # Update an Order
  result = api_instance.update_order(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->update_order: #{e}"
end
```

#### Using the update_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_order_with_http_info(id, opts)

```ruby
begin
  # Update an Order
  data, status_code, headers = api_instance.update_order_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->update_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_order_params** | [**UpdateOrderParams**](UpdateOrderParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## use_store_credit_order

> use_store_credit_order(id, opts)

Use Store Credit for an Order

Creates Store Credit payment for an Order

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::OrdersApi.new
id = 'id_example' # String | 
opts = {
  include: 'line_items,variants,product', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  amount_param: SpreeClient::AmountParam.new # AmountParam | 
}

begin
  # Use Store Credit for an Order
  api_instance.use_store_credit_order(id, opts)
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->use_store_credit_order: #{e}"
end
```

#### Using the use_store_credit_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> use_store_credit_order_with_http_info(id, opts)

```ruby
begin
  # Use Store Credit for an Order
  data, status_code, headers = api_instance.use_store_credit_order_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling OrdersApi->use_store_credit_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **amount_param** | [**AmountParam**](AmountParam.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

