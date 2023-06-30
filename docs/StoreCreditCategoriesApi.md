# SpreeClient::StoreCreditCategoriesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_store_credit_category**](StoreCreditCategoriesApi.md#create_store_credit_category) | **POST** /api/v2/platform/store_credit_categories | Create a Store Credit Category |
| [**delete_store_credit_category**](StoreCreditCategoriesApi.md#delete_store_credit_category) | **DELETE** /api/v2/platform/store_credit_categories/{id} | Delete a Store Credit Category |
| [**show_store_credit_category**](StoreCreditCategoriesApi.md#show_store_credit_category) | **GET** /api/v2/platform/store_credit_categories/{id} | Return a Store Credit Category |
| [**store_credit_categories_list**](StoreCreditCategoriesApi.md#store_credit_categories_list) | **GET** /api/v2/platform/store_credit_categories | Return a list of Store Credit Categories |
| [**update_store_credit_category**](StoreCreditCategoriesApi.md#update_store_credit_category) | **PATCH** /api/v2/platform/store_credit_categories/{id} | Update a Store Credit Category |


## create_store_credit_category

> <Resource> create_store_credit_category(opts)

Create a Store Credit Category

Creates a Store Credit Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditCategoriesApi.new
opts = {
  create_store_credit_category_params: SpreeClient::CreateStoreCreditCategoryParams.new({store_credit_category: SpreeClient::CreateStoreCreditCategoryParamsStoreCreditCategory.new({name: 'refunded'})}) # CreateStoreCreditCategoryParams | 
}

begin
  # Create a Store Credit Category
  result = api_instance.create_store_credit_category(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditCategoriesApi->create_store_credit_category: #{e}"
end
```

#### Using the create_store_credit_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_store_credit_category_with_http_info(opts)

```ruby
begin
  # Create a Store Credit Category
  data, status_code, headers = api_instance.create_store_credit_category_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditCategoriesApi->create_store_credit_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_store_credit_category_params** | [**CreateStoreCreditCategoryParams**](CreateStoreCreditCategoryParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_store_credit_category

> delete_store_credit_category(id)

Delete a Store Credit Category

Deletes a Store Credit Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditCategoriesApi.new
id = 'id_example' # String | 

begin
  # Delete a Store Credit Category
  api_instance.delete_store_credit_category(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditCategoriesApi->delete_store_credit_category: #{e}"
end
```

#### Using the delete_store_credit_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_store_credit_category_with_http_info(id)

```ruby
begin
  # Delete a Store Credit Category
  data, status_code, headers = api_instance.delete_store_credit_category_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditCategoriesApi->delete_store_credit_category_with_http_info: #{e}"
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


## show_store_credit_category

> <Resource> show_store_credit_category(id)

Return a Store Credit Category

Returns a Store Credit Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditCategoriesApi.new
id = 'id_example' # String | 

begin
  # Return a Store Credit Category
  result = api_instance.show_store_credit_category(id)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditCategoriesApi->show_store_credit_category: #{e}"
end
```

#### Using the show_store_credit_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_store_credit_category_with_http_info(id)

```ruby
begin
  # Return a Store Credit Category
  data, status_code, headers = api_instance.show_store_credit_category_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditCategoriesApi->show_store_credit_category_with_http_info: #{e}"
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


## store_credit_categories_list

> <ResourcesList> store_credit_categories_list(opts)

Return a list of Store Credit Categories

Returns a list of Store Credit Categories

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditCategoriesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  filter_name_eq: 'refunded' # String | 
}

begin
  # Return a list of Store Credit Categories
  result = api_instance.store_credit_categories_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditCategoriesApi->store_credit_categories_list: #{e}"
end
```

#### Using the store_credit_categories_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> store_credit_categories_list_with_http_info(opts)

```ruby
begin
  # Return a list of Store Credit Categories
  data, status_code, headers = api_instance.store_credit_categories_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditCategoriesApi->store_credit_categories_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **filter_name_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## update_store_credit_category

> <Resource> update_store_credit_category(id, opts)

Update a Store Credit Category

Updates a Store Credit Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::StoreCreditCategoriesApi.new
id = 'id_example' # String | 
opts = {
  update_store_credit_category_params: SpreeClient::UpdateStoreCreditCategoryParams.new({store_credit_category: SpreeClient::CreateStoreCreditCategoryParamsStoreCreditCategory.new({name: 'refunded'})}) # UpdateStoreCreditCategoryParams | 
}

begin
  # Update a Store Credit Category
  result = api_instance.update_store_credit_category(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditCategoriesApi->update_store_credit_category: #{e}"
end
```

#### Using the update_store_credit_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_store_credit_category_with_http_info(id, opts)

```ruby
begin
  # Update a Store Credit Category
  data, status_code, headers = api_instance.update_store_credit_category_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling StoreCreditCategoriesApi->update_store_credit_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_store_credit_category_params** | [**UpdateStoreCreditCategoryParams**](UpdateStoreCreditCategoryParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

