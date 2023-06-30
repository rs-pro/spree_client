# SpreeClient::VariantsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_variant**](VariantsApi.md#delete_variant) | **DELETE** /api/v2/platform/variants/{id} | Delete a Variant |
| [**show_variant**](VariantsApi.md#show_variant) | **GET** /api/v2/platform/variants/{id} | Return a Variant |
| [**variants_list**](VariantsApi.md#variants_list) | **GET** /api/v2/platform/variants | Return a list of Variants |


## delete_variant

> delete_variant(id)

Delete a Variant

Deletes a Variant

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::VariantsApi.new
id = 'id_example' # String | 

begin
  # Delete a Variant
  api_instance.delete_variant(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling VariantsApi->delete_variant: #{e}"
end
```

#### Using the delete_variant_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_variant_with_http_info(id)

```ruby
begin
  # Delete a Variant
  data, status_code, headers = api_instance.delete_variant_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling VariantsApi->delete_variant_with_http_info: #{e}"
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


## show_variant

> <Resource> show_variant(id, opts)

Return a Variant

Returns a Variant

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::VariantsApi.new
id = 'id_example' # String | 
opts = {
  include: 'product,tax_category,images,digitals' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Variant
  result = api_instance.show_variant(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling VariantsApi->show_variant: #{e}"
end
```

#### Using the show_variant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_variant_with_http_info(id, opts)

```ruby
begin
  # Return a Variant
  data, status_code, headers = api_instance.show_variant_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling VariantsApi->show_variant_with_http_info: #{e}"
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


## variants_list

> <ResourcesList> variants_list(opts)

Return a list of Variants

Returns a list of Variants

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::VariantsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'product,tax_category,images,digitals', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_product_id_eq: '1', # String | 
  filter_sku_i_cont: 'SKU123' # String | 
}

begin
  # Return a list of Variants
  result = api_instance.variants_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling VariantsApi->variants_list: #{e}"
end
```

#### Using the variants_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> variants_list_with_http_info(opts)

```ruby
begin
  # Return a list of Variants
  data, status_code, headers = api_instance.variants_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling VariantsApi->variants_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_product_id_eq** | **String** |  | [optional] |
| **filter_sku_i_cont** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json

