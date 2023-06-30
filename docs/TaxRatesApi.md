# SpreeClient::TaxRatesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tax_rate**](TaxRatesApi.md#create_tax_rate) | **POST** /api/v2/platform/tax_rates | Create a Tax Rate |
| [**delete_tax_rate**](TaxRatesApi.md#delete_tax_rate) | **DELETE** /api/v2/platform/tax_rates/{id} | Delete a Tax Rate |
| [**show_tax_rate**](TaxRatesApi.md#show_tax_rate) | **GET** /api/v2/platform/tax_rates/{id} | Return a Tax Rate |
| [**tax_rates_list**](TaxRatesApi.md#tax_rates_list) | **GET** /api/v2/platform/tax_rates | Return a list of Tax Rates |
| [**update_tax_rate**](TaxRatesApi.md#update_tax_rate) | **PATCH** /api/v2/platform/tax_rates/{id} | Update a Tax Rate |


## create_tax_rate

> <Resource> create_tax_rate(opts)

Create a Tax Rate

Creates a Tax Rate

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxRatesApi.new
opts = {
  include: 'zone,tax_category', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_tax_rate_params: SpreeClient::CreateTaxRateParams.new({tax_rate: SpreeClient::CreateTaxRateParamsTaxRate.new({amount: 0.05, tax_category_id: '1', calculator_attributes: SpreeClient::CreateTaxRateParamsTaxRateCalculatorAttributes.new})}) # CreateTaxRateParams | 
}

begin
  # Create a Tax Rate
  result = api_instance.create_tax_rate(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxRatesApi->create_tax_rate: #{e}"
end
```

#### Using the create_tax_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_tax_rate_with_http_info(opts)

```ruby
begin
  # Create a Tax Rate
  data, status_code, headers = api_instance.create_tax_rate_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxRatesApi->create_tax_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_tax_rate_params** | [**CreateTaxRateParams**](CreateTaxRateParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_tax_rate

> delete_tax_rate(id)

Delete a Tax Rate

Deletes a Tax Rate

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxRatesApi.new
id = 'id_example' # String | 

begin
  # Delete a Tax Rate
  api_instance.delete_tax_rate(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxRatesApi->delete_tax_rate: #{e}"
end
```

#### Using the delete_tax_rate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tax_rate_with_http_info(id)

```ruby
begin
  # Delete a Tax Rate
  data, status_code, headers = api_instance.delete_tax_rate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxRatesApi->delete_tax_rate_with_http_info: #{e}"
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


## show_tax_rate

> <Resource> show_tax_rate(id, opts)

Return a Tax Rate

Returns a Tax Rate

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxRatesApi.new
id = 'id_example' # String | 
opts = {
  include: 'zone,tax_category' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Tax Rate
  result = api_instance.show_tax_rate(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxRatesApi->show_tax_rate: #{e}"
end
```

#### Using the show_tax_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_tax_rate_with_http_info(id, opts)

```ruby
begin
  # Return a Tax Rate
  data, status_code, headers = api_instance.show_tax_rate_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxRatesApi->show_tax_rate_with_http_info: #{e}"
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


## tax_rates_list

> <ResourcesList> tax_rates_list(opts)

Return a list of Tax Rates

Returns a list of Tax Rates

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxRatesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'zone,tax_category', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_zone_id_eq: '3', # String | 
  filter_amount_gt: '0.05', # String | 
  filter_tax_category_id_eq: '1' # String | 
}

begin
  # Return a list of Tax Rates
  result = api_instance.tax_rates_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxRatesApi->tax_rates_list: #{e}"
end
```

#### Using the tax_rates_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> tax_rates_list_with_http_info(opts)

```ruby
begin
  # Return a list of Tax Rates
  data, status_code, headers = api_instance.tax_rates_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxRatesApi->tax_rates_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_zone_id_eq** | **String** |  | [optional] |
| **filter_amount_gt** | **String** |  | [optional] |
| **filter_tax_category_id_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## update_tax_rate

> <Resource> update_tax_rate(id, opts)

Update a Tax Rate

Updates a Tax Rate

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxRatesApi.new
id = 'id_example' # String | 
opts = {
  include: 'zone,tax_category', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_tax_rate_params: SpreeClient::UpdateTaxRateParams.new({tax_rate: SpreeClient::CreateTaxRateParamsTaxRate.new({amount: 0.05, tax_category_id: '1', calculator_attributes: SpreeClient::CreateTaxRateParamsTaxRateCalculatorAttributes.new})}) # UpdateTaxRateParams | 
}

begin
  # Update a Tax Rate
  result = api_instance.update_tax_rate(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxRatesApi->update_tax_rate: #{e}"
end
```

#### Using the update_tax_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_tax_rate_with_http_info(id, opts)

```ruby
begin
  # Update a Tax Rate
  data, status_code, headers = api_instance.update_tax_rate_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxRatesApi->update_tax_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_tax_rate_params** | [**UpdateTaxRateParams**](UpdateTaxRateParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

