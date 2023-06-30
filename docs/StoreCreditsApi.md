# SpreeClient::StoreCreditsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_store_credit**](StoreCreditsApi.md#create_store_credit) | **POST** /api/v2/platform/store_credits | Create a Store Credit |
| [**delete_store_credit**](StoreCreditsApi.md#delete_store_credit) | **DELETE** /api/v2/platform/store_credits/{id} | Delete a Store Credit |
| [**show_store_credit**](StoreCreditsApi.md#show_store_credit) | **GET** /api/v2/platform/store_credits/{id} | Return a Store Credit |
| [**store_credits_list**](StoreCreditsApi.md#store_credits_list) | **GET** /api/v2/platform/store_credits | Return a list of Store Credits |
| [**update_store_credit**](StoreCreditsApi.md#update_store_credit) | **PATCH** /api/v2/platform/store_credits/{id} | Update a Store Credit |


## create_store_credit

> <Resource> create_store_credit(opts)

Create a Store Credit

Creates a Store Credit

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditsApi.new
opts = {
  include: 'user,created_by,category,credit_type', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_store_credit_params: SpreeClient::CreateStoreCreditParams.new({store_credit: SpreeClient::CreateStoreCreditParamsStoreCredit.new({user_id: '2', category_id: '4', created_by_id: '5', amount: 25, currency: 'USD', type_id: '1', store_id: '2'})}) # CreateStoreCreditParams | 
}

begin
  # Create a Store Credit
  result = api_instance.create_store_credit(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditsApi->create_store_credit: #{e}"
end
```

#### Using the create_store_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_store_credit_with_http_info(opts)

```ruby
begin
  # Create a Store Credit
  data, status_code, headers = api_instance.create_store_credit_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditsApi->create_store_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_store_credit_params** | [**CreateStoreCreditParams**](CreateStoreCreditParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_store_credit

> delete_store_credit(id)

Delete a Store Credit

Deletes a Store Credit

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditsApi.new
id = 'id_example' # String | 

begin
  # Delete a Store Credit
  api_instance.delete_store_credit(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditsApi->delete_store_credit: #{e}"
end
```

#### Using the delete_store_credit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_store_credit_with_http_info(id)

```ruby
begin
  # Delete a Store Credit
  data, status_code, headers = api_instance.delete_store_credit_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditsApi->delete_store_credit_with_http_info: #{e}"
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


## show_store_credit

> <Resource> show_store_credit(id, opts)

Return a Store Credit

Returns a Store Credit

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditsApi.new
id = 'id_example' # String | 
opts = {
  include: 'user,created_by,category,credit_type' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Store Credit
  result = api_instance.show_store_credit(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditsApi->show_store_credit: #{e}"
end
```

#### Using the show_store_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_store_credit_with_http_info(id, opts)

```ruby
begin
  # Return a Store Credit
  data, status_code, headers = api_instance.show_store_credit_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditsApi->show_store_credit_with_http_info: #{e}"
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


## store_credits_list

> <ResourcesList> store_credits_list(opts)

Return a list of Store Credits

Returns a list of Store Credits

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'user,created_by,category,credit_type', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_user_id_eq: '5', # String | 
  filter_created_by_id_eq: '2', # String | 
  filter_amount_gteq: '50.0', # String | 
  filter_currency_eq: 'USD' # String | 
}

begin
  # Return a list of Store Credits
  result = api_instance.store_credits_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditsApi->store_credits_list: #{e}"
end
```

#### Using the store_credits_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> store_credits_list_with_http_info(opts)

```ruby
begin
  # Return a list of Store Credits
  data, status_code, headers = api_instance.store_credits_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditsApi->store_credits_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_user_id_eq** | **String** |  | [optional] |
| **filter_created_by_id_eq** | **String** |  | [optional] |
| **filter_amount_gteq** | **String** |  | [optional] |
| **filter_currency_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## update_store_credit

> <Resource> update_store_credit(id, opts)

Update a Store Credit

Updates a Store Credit

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditsApi.new
id = 'id_example' # String | 
opts = {
  include: 'user,created_by,category,credit_type', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_store_credit_params: SpreeClient::UpdateStoreCreditParams.new({store_credit: SpreeClient::CreateStoreCreditParamsStoreCredit.new({user_id: '2', category_id: '4', created_by_id: '5', amount: 25, currency: 'USD', type_id: '1', store_id: '2'})}) # UpdateStoreCreditParams | 
}

begin
  # Update a Store Credit
  result = api_instance.update_store_credit(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditsApi->update_store_credit: #{e}"
end
```

#### Using the update_store_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_store_credit_with_http_info(id, opts)

```ruby
begin
  # Update a Store Credit
  data, status_code, headers = api_instance.update_store_credit_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditsApi->update_store_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_store_credit_params** | [**UpdateStoreCreditParams**](UpdateStoreCreditParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

