# SpreeClient::PromotionActionsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_promotion_action**](PromotionActionsApi.md#create_promotion_action) | **POST** /api/v2/platform/promotion_actions | Create a Promotion Action |
| [**delete_promotion_action**](PromotionActionsApi.md#delete_promotion_action) | **DELETE** /api/v2/platform/promotion_actions/{id} | Delete a Promotion Action |
| [**promotion_actions_list**](PromotionActionsApi.md#promotion_actions_list) | **GET** /api/v2/platform/promotion_actions | Return a list of Promotion Actions |
| [**show_promotion_action**](PromotionActionsApi.md#show_promotion_action) | **GET** /api/v2/platform/promotion_actions/{id} | Return a Promotion Action |
| [**update_promotion_action**](PromotionActionsApi.md#update_promotion_action) | **PATCH** /api/v2/platform/promotion_actions/{id} | Update a Promotion Action |


## create_promotion_action

> <Resource> create_promotion_action(opts)

Create a Promotion Action

Creates a Promotion Action

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionActionsApi.new
opts = {
  include: 'calculator', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_promotion_action_params: SpreeClient::CreatePromotionActionParams.new({promotion_action: SpreeClient::CreatePromotionActionParamsPromotionAction.new({type: 'Spree::Promotion::Actions::CreateAdjustment', promotion_id: '22'})}) # CreatePromotionActionParams | 
}

begin
  # Create a Promotion Action
  result = api_instance.create_promotion_action(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionActionsApi->create_promotion_action: #{e}"
end
```

#### Using the create_promotion_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_promotion_action_with_http_info(opts)

```ruby
begin
  # Create a Promotion Action
  data, status_code, headers = api_instance.create_promotion_action_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionActionsApi->create_promotion_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_promotion_action_params** | [**CreatePromotionActionParams**](CreatePromotionActionParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_promotion_action

> delete_promotion_action(id)

Delete a Promotion Action

Deletes a Promotion Action

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionActionsApi.new
id = 'id_example' # String | 

begin
  # Delete a Promotion Action
  api_instance.delete_promotion_action(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionActionsApi->delete_promotion_action: #{e}"
end
```

#### Using the delete_promotion_action_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_promotion_action_with_http_info(id)

```ruby
begin
  # Delete a Promotion Action
  data, status_code, headers = api_instance.delete_promotion_action_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionActionsApi->delete_promotion_action_with_http_info: #{e}"
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


## promotion_actions_list

> <ResourcesList> promotion_actions_list(opts)

Return a list of Promotion Actions

Returns a list of Promotion Actions

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionActionsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'calculator', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_type_eq: 'Spree::Promotion::Actions::CreateAdjustment' # String | 
}

begin
  # Return a list of Promotion Actions
  result = api_instance.promotion_actions_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionActionsApi->promotion_actions_list: #{e}"
end
```

#### Using the promotion_actions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> promotion_actions_list_with_http_info(opts)

```ruby
begin
  # Return a list of Promotion Actions
  data, status_code, headers = api_instance.promotion_actions_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionActionsApi->promotion_actions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_type_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_promotion_action

> <Resource> show_promotion_action(id, opts)

Return a Promotion Action

Returns a Promotion Action

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionActionsApi.new
id = 'id_example' # String | 
opts = {
  include: 'calculator' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Promotion Action
  result = api_instance.show_promotion_action(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionActionsApi->show_promotion_action: #{e}"
end
```

#### Using the show_promotion_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_promotion_action_with_http_info(id, opts)

```ruby
begin
  # Return a Promotion Action
  data, status_code, headers = api_instance.show_promotion_action_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionActionsApi->show_promotion_action_with_http_info: #{e}"
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


## update_promotion_action

> <Resource> update_promotion_action(id, opts)

Update a Promotion Action

Updates a Promotion Action

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionActionsApi.new
id = 'id_example' # String | 
opts = {
  include: 'calculator', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_promotion_action_params: SpreeClient::UpdatePromotionActionParams.new({promotion_action: SpreeClient::UpdatePromotionActionParamsPromotionAction.new}) # UpdatePromotionActionParams | 
}

begin
  # Update a Promotion Action
  result = api_instance.update_promotion_action(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionActionsApi->update_promotion_action: #{e}"
end
```

#### Using the update_promotion_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_promotion_action_with_http_info(id, opts)

```ruby
begin
  # Update a Promotion Action
  data, status_code, headers = api_instance.update_promotion_action_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionActionsApi->update_promotion_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_promotion_action_params** | [**UpdatePromotionActionParams**](UpdatePromotionActionParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

