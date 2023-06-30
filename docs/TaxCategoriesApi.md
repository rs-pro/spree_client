# SpreeClient::TaxCategoriesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tax_category**](TaxCategoriesApi.md#create_tax_category) | **POST** /api/v2/platform/tax_categories | Create a Tax Category |
| [**delete_tax_category**](TaxCategoriesApi.md#delete_tax_category) | **DELETE** /api/v2/platform/tax_categories/{id} | Delete a Tax Category |
| [**show_tax_category**](TaxCategoriesApi.md#show_tax_category) | **GET** /api/v2/platform/tax_categories/{id} | Return a Tax Category |
| [**tax_categories_list**](TaxCategoriesApi.md#tax_categories_list) | **GET** /api/v2/platform/tax_categories | Return a list of Tax Categories |
| [**update_tax_category**](TaxCategoriesApi.md#update_tax_category) | **PATCH** /api/v2/platform/tax_categories/{id} | Update a Tax Category |


## create_tax_category

> <Resource> create_tax_category(opts)

Create a Tax Category

Creates a Tax Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxCategoriesApi.new
opts = {
  include: 'tax_rates', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_tax_category_params: SpreeClient::CreateTaxCategoryParams.new({tax_category: SpreeClient::CreateTaxCategoryParamsTaxCategory.new({name: 'Clothing'})}) # CreateTaxCategoryParams | 
}

begin
  # Create a Tax Category
  result = api_instance.create_tax_category(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxCategoriesApi->create_tax_category: #{e}"
end
```

#### Using the create_tax_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_tax_category_with_http_info(opts)

```ruby
begin
  # Create a Tax Category
  data, status_code, headers = api_instance.create_tax_category_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxCategoriesApi->create_tax_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_tax_category_params** | [**CreateTaxCategoryParams**](CreateTaxCategoryParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_tax_category

> delete_tax_category(id)

Delete a Tax Category

Deletes a Tax Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxCategoriesApi.new
id = 'id_example' # String | 

begin
  # Delete a Tax Category
  api_instance.delete_tax_category(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxCategoriesApi->delete_tax_category: #{e}"
end
```

#### Using the delete_tax_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tax_category_with_http_info(id)

```ruby
begin
  # Delete a Tax Category
  data, status_code, headers = api_instance.delete_tax_category_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxCategoriesApi->delete_tax_category_with_http_info: #{e}"
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


## show_tax_category

> <Resource> show_tax_category(id, opts)

Return a Tax Category

Returns a Tax Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxCategoriesApi.new
id = 'id_example' # String | 
opts = {
  include: 'tax_rates' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Tax Category
  result = api_instance.show_tax_category(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxCategoriesApi->show_tax_category: #{e}"
end
```

#### Using the show_tax_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_tax_category_with_http_info(id, opts)

```ruby
begin
  # Return a Tax Category
  data, status_code, headers = api_instance.show_tax_category_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxCategoriesApi->show_tax_category_with_http_info: #{e}"
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


## tax_categories_list

> <ResourcesList> tax_categories_list(opts)

Return a list of Tax Categories

Returns a list of Tax Categories

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxCategoriesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'tax_rates', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_name_eq: 'Clothing', # String | 
  filter_is_default_true: '1', # String | 
  filter_tax_code_eq: '1257L' # String | 
}

begin
  # Return a list of Tax Categories
  result = api_instance.tax_categories_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxCategoriesApi->tax_categories_list: #{e}"
end
```

#### Using the tax_categories_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> tax_categories_list_with_http_info(opts)

```ruby
begin
  # Return a list of Tax Categories
  data, status_code, headers = api_instance.tax_categories_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxCategoriesApi->tax_categories_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_name_eq** | **String** |  | [optional] |
| **filter_is_default_true** | **String** |  | [optional] |
| **filter_tax_code_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## update_tax_category

> <Resource> update_tax_category(id, opts)

Update a Tax Category

Updates a Tax Category

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxCategoriesApi.new
id = 'id_example' # String | 
opts = {
  include: 'tax_rates', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_tax_category_params: SpreeClient::UpdateTaxCategoryParams.new({tax_category: SpreeClient::CreateTaxCategoryParamsTaxCategory.new({name: 'Clothing'})}) # UpdateTaxCategoryParams | 
}

begin
  # Update a Tax Category
  result = api_instance.update_tax_category(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxCategoriesApi->update_tax_category: #{e}"
end
```

#### Using the update_tax_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_tax_category_with_http_info(id, opts)

```ruby
begin
  # Update a Tax Category
  data, status_code, headers = api_instance.update_tax_category_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxCategoriesApi->update_tax_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_tax_category_params** | [**UpdateTaxCategoryParams**](UpdateTaxCategoryParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

