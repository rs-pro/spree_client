# SpreeClient::PromotionRulesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_promotion_rule**](PromotionRulesApi.md#create_promotion_rule) | **POST** /api/v2/platform/promotion_rules | Create a Promotion Rule |
| [**delete_promotion_rule**](PromotionRulesApi.md#delete_promotion_rule) | **DELETE** /api/v2/platform/promotion_rules/{id} | Delete a Promotion Rule |
| [**promotion_rules_list**](PromotionRulesApi.md#promotion_rules_list) | **GET** /api/v2/platform/promotion_rules | Return a list of Promotion Rules |
| [**show_promotion_rule**](PromotionRulesApi.md#show_promotion_rule) | **GET** /api/v2/platform/promotion_rules/{id} | Return a Promotion Rule |
| [**update_promotion_rule**](PromotionRulesApi.md#update_promotion_rule) | **PATCH** /api/v2/platform/promotion_rules/{id} | Update a Promotion Rule |


## create_promotion_rule

> <Resource> create_promotion_rule(opts)

Create a Promotion Rule

Creates a Promotion Rule

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionRulesApi.new
opts = {
  include: 'user', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_promotion_rule_params: SpreeClient::CreatePromotionRuleParams.new({promotion_rule: SpreeClient::CreatePromotionRuleParamsPromotionRule.new({promotion_id: '22', type: 'Spree::Promotion::Rules::Country'})}) # CreatePromotionRuleParams | 
}

begin
  # Create a Promotion Rule
  result = api_instance.create_promotion_rule(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionRulesApi->create_promotion_rule: #{e}"
end
```

#### Using the create_promotion_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_promotion_rule_with_http_info(opts)

```ruby
begin
  # Create a Promotion Rule
  data, status_code, headers = api_instance.create_promotion_rule_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionRulesApi->create_promotion_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_promotion_rule_params** | [**CreatePromotionRuleParams**](CreatePromotionRuleParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_promotion_rule

> delete_promotion_rule(id)

Delete a Promotion Rule

Deletes a Promotion Rule

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionRulesApi.new
id = 'id_example' # String | 

begin
  # Delete a Promotion Rule
  api_instance.delete_promotion_rule(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionRulesApi->delete_promotion_rule: #{e}"
end
```

#### Using the delete_promotion_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_promotion_rule_with_http_info(id)

```ruby
begin
  # Delete a Promotion Rule
  data, status_code, headers = api_instance.delete_promotion_rule_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionRulesApi->delete_promotion_rule_with_http_info: #{e}"
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


## promotion_rules_list

> <ResourcesList> promotion_rules_list(opts)

Return a list of Promotion Rules

Returns a list of Promotion Rules

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionRulesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'user', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_type_eq: 'Spree::Promotion::Rules::Product' # String | 
}

begin
  # Return a list of Promotion Rules
  result = api_instance.promotion_rules_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionRulesApi->promotion_rules_list: #{e}"
end
```

#### Using the promotion_rules_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> promotion_rules_list_with_http_info(opts)

```ruby
begin
  # Return a list of Promotion Rules
  data, status_code, headers = api_instance.promotion_rules_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionRulesApi->promotion_rules_list_with_http_info: #{e}"
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


## show_promotion_rule

> <Resource> show_promotion_rule(id, opts)

Return a Promotion Rule

Returns a Promotion Rule

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionRulesApi.new
id = 'id_example' # String | 
opts = {
  include: 'user' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Promotion Rule
  result = api_instance.show_promotion_rule(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionRulesApi->show_promotion_rule: #{e}"
end
```

#### Using the show_promotion_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_promotion_rule_with_http_info(id, opts)

```ruby
begin
  # Return a Promotion Rule
  data, status_code, headers = api_instance.show_promotion_rule_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionRulesApi->show_promotion_rule_with_http_info: #{e}"
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


## update_promotion_rule

> <Resource> update_promotion_rule(id, opts)

Update a Promotion Rule

Updates a Promotion Rule

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::PromotionRulesApi.new
id = 'id_example' # String | 
opts = {
  include: 'user', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_promotion_rule_params: SpreeClient::UpdatePromotionRuleParams.new({promotion_rule: SpreeClient::UpdatePromotionRuleParamsPromotionRule.new}) # UpdatePromotionRuleParams | 
}

begin
  # Update a Promotion Rule
  result = api_instance.update_promotion_rule(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionRulesApi->update_promotion_rule: #{e}"
end
```

#### Using the update_promotion_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_promotion_rule_with_http_info(id, opts)

```ruby
begin
  # Update a Promotion Rule
  data, status_code, headers = api_instance.update_promotion_rule_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling PromotionRulesApi->update_promotion_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_promotion_rule_params** | [**UpdatePromotionRuleParams**](UpdatePromotionRuleParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

