# SpreeClient::PromotionsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_promotion**](PromotionsApi.md#create_promotion) | **POST** /api/v2/platform/promotions | Create a Promotion |
| [**delete_promotion**](PromotionsApi.md#delete_promotion) | **DELETE** /api/v2/platform/promotions/{id} | Delete a Promotion |
| [**promotions_list**](PromotionsApi.md#promotions_list) | **GET** /api/v2/platform/promotions | Return a list of Promotions |
| [**show_promotion**](PromotionsApi.md#show_promotion) | **GET** /api/v2/platform/promotions/{id} | Return a Promotion |
| [**update_promotion**](PromotionsApi.md#update_promotion) | **PATCH** /api/v2/platform/promotions/{id} | Update a Promotion |


## create_promotion

> <Resource> create_promotion(opts)

Create a Promotion

Creates a Promotion

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionsApi.new
opts = {
  include: 'promotion_category,promotion_rules,promotion_actions,stores', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_promotion_params: SpreeClient::CreatePromotionParams.new({promotion: SpreeClient::CreatePromotionParamsPromotion.new({name: 'Promotions Used in 2021'})}) # CreatePromotionParams | 
}

begin
  # Create a Promotion
  result = api_instance.create_promotion(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionsApi->create_promotion: #{e}"
end
```

#### Using the create_promotion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_promotion_with_http_info(opts)

```ruby
begin
  # Create a Promotion
  data, status_code, headers = api_instance.create_promotion_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionsApi->create_promotion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_promotion_params** | [**CreatePromotionParams**](CreatePromotionParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_promotion

> delete_promotion(id)

Delete a Promotion

Deletes a Promotion

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionsApi.new
id = 'id_example' # String | 

begin
  # Delete a Promotion
  api_instance.delete_promotion(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionsApi->delete_promotion: #{e}"
end
```

#### Using the delete_promotion_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_promotion_with_http_info(id)

```ruby
begin
  # Delete a Promotion
  data, status_code, headers = api_instance.delete_promotion_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionsApi->delete_promotion_with_http_info: #{e}"
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


## promotions_list

> <ResourcesList> promotions_list(opts)

Return a list of Promotions

Returns a list of Promotions

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'promotion_category,promotion_rules,promotion_actions,stores', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_code_eq: 'BLK-FRI', # String | 
  filter_name_cont: 'New Customer' # String | 
}

begin
  # Return a list of Promotions
  result = api_instance.promotions_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionsApi->promotions_list: #{e}"
end
```

#### Using the promotions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> promotions_list_with_http_info(opts)

```ruby
begin
  # Return a list of Promotions
  data, status_code, headers = api_instance.promotions_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionsApi->promotions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_code_eq** | **String** |  | [optional] |
| **filter_name_cont** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_promotion

> <Resource> show_promotion(id, opts)

Return a Promotion

Returns a Promotion

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionsApi.new
id = 'id_example' # String | 
opts = {
  include: 'promotion_category,promotion_rules,promotion_actions,stores' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Promotion
  result = api_instance.show_promotion(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionsApi->show_promotion: #{e}"
end
```

#### Using the show_promotion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_promotion_with_http_info(id, opts)

```ruby
begin
  # Return a Promotion
  data, status_code, headers = api_instance.show_promotion_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionsApi->show_promotion_with_http_info: #{e}"
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


## update_promotion

> <Resource> update_promotion(id, opts)

Update a Promotion

Updates a Promotion

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionsApi.new
id = 'id_example' # String | 
opts = {
  include: 'promotion_category,promotion_rules,promotion_actions,stores', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_promotion_request: SpreeClient::UpdatePromotionActionCalculatorParams.new({promotion: SpreeClient::UpdatePromotionActionCalculatorParamsPromotion.new}) # UpdatePromotionRequest | 
}

begin
  # Update a Promotion
  result = api_instance.update_promotion(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionsApi->update_promotion: #{e}"
end
```

#### Using the update_promotion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_promotion_with_http_info(id, opts)

```ruby
begin
  # Update a Promotion
  data, status_code, headers = api_instance.update_promotion_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionsApi->update_promotion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_promotion_request** | [**UpdatePromotionRequest**](UpdatePromotionRequest.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

