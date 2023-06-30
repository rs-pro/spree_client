# SpreeClient::PromotionCategoriesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_promotion_category**](PromotionCategoriesApi.md#create_promotion_category) | **POST** /api/v2/platform/promotion_categories | Create a Promotion Category |
| [**delete_promotion_category**](PromotionCategoriesApi.md#delete_promotion_category) | **DELETE** /api/v2/platform/promotion_categories/{id} | Delete a Promotion Category |
| [**promotion_categories_list**](PromotionCategoriesApi.md#promotion_categories_list) | **GET** /api/v2/platform/promotion_categories | Return a list of Promotion Categories |
| [**show_promotion_category**](PromotionCategoriesApi.md#show_promotion_category) | **GET** /api/v2/platform/promotion_categories/{id} | Return a Promotion Category |
| [**update_promotion_category**](PromotionCategoriesApi.md#update_promotion_category) | **PATCH** /api/v2/platform/promotion_categories/{id} | Update a Promotion Category |


## create_promotion_category

> <Resource> create_promotion_category(opts)

Create a Promotion Category

Creates a Promotion Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionCategoriesApi.new
opts = {
  include: 'promotions', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_promotion_category_params: SpreeClient::CreatePromotionCategoryParams.new({promotion_category: SpreeClient::CreatePromotionCategoryParamsPromotionCategory.new({name: 'Promotions Used in 2021'})}) # CreatePromotionCategoryParams | 
}

begin
  # Create a Promotion Category
  result = api_instance.create_promotion_category(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionCategoriesApi->create_promotion_category: #{e}"
end
```

#### Using the create_promotion_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_promotion_category_with_http_info(opts)

```ruby
begin
  # Create a Promotion Category
  data, status_code, headers = api_instance.create_promotion_category_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionCategoriesApi->create_promotion_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_promotion_category_params** | [**CreatePromotionCategoryParams**](CreatePromotionCategoryParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_promotion_category

> delete_promotion_category(id)

Delete a Promotion Category

Deletes a Promotion Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionCategoriesApi.new
id = 'id_example' # String | 

begin
  # Delete a Promotion Category
  api_instance.delete_promotion_category(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionCategoriesApi->delete_promotion_category: #{e}"
end
```

#### Using the delete_promotion_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_promotion_category_with_http_info(id)

```ruby
begin
  # Delete a Promotion Category
  data, status_code, headers = api_instance.delete_promotion_category_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionCategoriesApi->delete_promotion_category_with_http_info: #{e}"
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


## promotion_categories_list

> <ResourcesList> promotion_categories_list(opts)

Return a list of Promotion Categories

Returns a list of Promotion Categories

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionCategoriesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'promotions', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_code_eq: 'BLK-FRI', # String | 
  filter_name_eq: '2020 Promotions' # String | 
}

begin
  # Return a list of Promotion Categories
  result = api_instance.promotion_categories_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionCategoriesApi->promotion_categories_list: #{e}"
end
```

#### Using the promotion_categories_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> promotion_categories_list_with_http_info(opts)

```ruby
begin
  # Return a list of Promotion Categories
  data, status_code, headers = api_instance.promotion_categories_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionCategoriesApi->promotion_categories_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_code_eq** | **String** |  | [optional] |
| **filter_name_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_promotion_category

> <Resource> show_promotion_category(id, opts)

Return a Promotion Category

Returns a Promotion Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionCategoriesApi.new
id = 'id_example' # String | 
opts = {
  include: 'promotions' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Promotion Category
  result = api_instance.show_promotion_category(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionCategoriesApi->show_promotion_category: #{e}"
end
```

#### Using the show_promotion_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_promotion_category_with_http_info(id, opts)

```ruby
begin
  # Return a Promotion Category
  data, status_code, headers = api_instance.show_promotion_category_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionCategoriesApi->show_promotion_category_with_http_info: #{e}"
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


## update_promotion_category

> <Resource> update_promotion_category(id, opts)

Update a Promotion Category

Updates a Promotion Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionCategoriesApi.new
id = 'id_example' # String | 
opts = {
  include: 'promotions', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_promotion_category_params: SpreeClient::UpdatePromotionCategoryParams.new({promotion_category: SpreeClient::UpdatePromotionCategoryParamsPromotionCategory.new({name: 'Promotions Used in 2021'})}) # UpdatePromotionCategoryParams | 
}

begin
  # Update a Promotion Category
  result = api_instance.update_promotion_category(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionCategoriesApi->update_promotion_category: #{e}"
end
```

#### Using the update_promotion_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_promotion_category_with_http_info(id, opts)

```ruby
begin
  # Update a Promotion Category
  data, status_code, headers = api_instance.update_promotion_category_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionCategoriesApi->update_promotion_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_promotion_category_params** | [**UpdatePromotionCategoryParams**](UpdatePromotionCategoryParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

