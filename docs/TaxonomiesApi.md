# SpreeClient::TaxonomiesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_taxonomy**](TaxonomiesApi.md#create_taxonomy) | **POST** /api/v2/platform/taxonomies | Create a Taxonomy |
| [**delete_taxonomy**](TaxonomiesApi.md#delete_taxonomy) | **DELETE** /api/v2/platform/taxonomies/{id} | Delete a Taxonomy |
| [**show_taxonomy**](TaxonomiesApi.md#show_taxonomy) | **GET** /api/v2/platform/taxonomies/{id} | Return a Taxonomy |
| [**taxonomies_list**](TaxonomiesApi.md#taxonomies_list) | **GET** /api/v2/platform/taxonomies | Return a list of Taxonomies |
| [**update_taxonomy**](TaxonomiesApi.md#update_taxonomy) | **PATCH** /api/v2/platform/taxonomies/{id} | Update a Taxonomy |


## create_taxonomy

> <Resource> create_taxonomy(opts)

Create a Taxonomy

Creates a Taxonomy

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxonomiesApi.new
opts = {
  include: 'taxons,root', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_taxonomy_params: SpreeClient::CreateTaxonomyParams.new({taxonomy: SpreeClient::CreateTaxonomyParamsTaxonomy.new({name: 'name_example'})}) # CreateTaxonomyParams | 
}

begin
  # Create a Taxonomy
  result = api_instance.create_taxonomy(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonomiesApi->create_taxonomy: #{e}"
end
```

#### Using the create_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_taxonomy_with_http_info(opts)

```ruby
begin
  # Create a Taxonomy
  data, status_code, headers = api_instance.create_taxonomy_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonomiesApi->create_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_taxonomy_params** | [**CreateTaxonomyParams**](CreateTaxonomyParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_taxonomy

> delete_taxonomy(id)

Delete a Taxonomy

Deletes a Taxonomy

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxonomiesApi.new
id = 'id_example' # String | 

begin
  # Delete a Taxonomy
  api_instance.delete_taxonomy(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonomiesApi->delete_taxonomy: #{e}"
end
```

#### Using the delete_taxonomy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_taxonomy_with_http_info(id)

```ruby
begin
  # Delete a Taxonomy
  data, status_code, headers = api_instance.delete_taxonomy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonomiesApi->delete_taxonomy_with_http_info: #{e}"
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


## show_taxonomy

> <Resource> show_taxonomy(id, opts)

Return a Taxonomy

Returns a Taxonomy

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxonomiesApi.new
id = 'id_example' # String | 
opts = {
  include: 'taxons,root' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Taxonomy
  result = api_instance.show_taxonomy(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonomiesApi->show_taxonomy: #{e}"
end
```

#### Using the show_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_taxonomy_with_http_info(id, opts)

```ruby
begin
  # Return a Taxonomy
  data, status_code, headers = api_instance.show_taxonomy_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonomiesApi->show_taxonomy_with_http_info: #{e}"
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


## taxonomies_list

> <ResourcesList> taxonomies_list(opts)

Return a list of Taxonomies

Returns a list of Taxonomies

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxonomiesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'taxons,root', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_name_eq: 'Categories' # String | 
}

begin
  # Return a list of Taxonomies
  result = api_instance.taxonomies_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonomiesApi->taxonomies_list: #{e}"
end
```

#### Using the taxonomies_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> taxonomies_list_with_http_info(opts)

```ruby
begin
  # Return a list of Taxonomies
  data, status_code, headers = api_instance.taxonomies_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonomiesApi->taxonomies_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_name_eq** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## update_taxonomy

> <Resource> update_taxonomy(id, opts)

Update a Taxonomy

Updates a Taxonomy

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxonomiesApi.new
id = 'id_example' # String | 
opts = {
  include: 'taxons,root', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_taxonomy_params: SpreeClient::UpdateTaxonomyParams.new({taxonomy: SpreeClient::UpdateTaxonomyParamsTaxonomy.new}) # UpdateTaxonomyParams | 
}

begin
  # Update a Taxonomy
  result = api_instance.update_taxonomy(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonomiesApi->update_taxonomy: #{e}"
end
```

#### Using the update_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_taxonomy_with_http_info(id, opts)

```ruby
begin
  # Update a Taxonomy
  data, status_code, headers = api_instance.update_taxonomy_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonomiesApi->update_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_taxonomy_params** | [**UpdateTaxonomyParams**](UpdateTaxonomyParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

