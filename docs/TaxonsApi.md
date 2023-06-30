# SpreeClient::TaxonsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_taxon**](TaxonsApi.md#create_taxon) | **POST** /api/v2/platform/taxons | Create a Taxon |
| [**delete_taxon**](TaxonsApi.md#delete_taxon) | **DELETE** /api/v2/platform/taxons/{id} | Delete a Taxon |
| [**reposition_taxon**](TaxonsApi.md#reposition_taxon) | **PATCH** /api/v2/platform/taxons/{id}/reposition | Reposition a Taxon |
| [**show_taxon**](TaxonsApi.md#show_taxon) | **GET** /api/v2/platform/taxons/{id} | Return a Taxon |
| [**taxons_list**](TaxonsApi.md#taxons_list) | **GET** /api/v2/platform/taxons | Return a list of Taxons |
| [**update_taxon**](TaxonsApi.md#update_taxon) | **PATCH** /api/v2/platform/taxons/{id} | Update a Taxon |


## create_taxon

> <Resource> create_taxon(opts)

Create a Taxon

Creates a Taxon

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxonsApi.new
opts = {
  include: 'taxonomy,parent,children', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_taxon_params: SpreeClient::CreateTaxonParams.new({taxon: SpreeClient::CreateTaxonParamsTaxon.new({taxonomy_id: 'taxonomy_id_example', name: 'name_example'})}) # CreateTaxonParams | 
}

begin
  # Create a Taxon
  result = api_instance.create_taxon(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonsApi->create_taxon: #{e}"
end
```

#### Using the create_taxon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_taxon_with_http_info(opts)

```ruby
begin
  # Create a Taxon
  data, status_code, headers = api_instance.create_taxon_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonsApi->create_taxon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_taxon_params** | [**CreateTaxonParams**](CreateTaxonParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_taxon

> delete_taxon(id)

Delete a Taxon

Deletes a Taxon

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxonsApi.new
id = 'id_example' # String | 

begin
  # Delete a Taxon
  api_instance.delete_taxon(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonsApi->delete_taxon: #{e}"
end
```

#### Using the delete_taxon_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_taxon_with_http_info(id)

```ruby
begin
  # Delete a Taxon
  data, status_code, headers = api_instance.delete_taxon_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonsApi->delete_taxon_with_http_info: #{e}"
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


## reposition_taxon

> <Resource> reposition_taxon(id, opts)

Reposition a Taxon

Reposition a Taxon

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxonsApi.new
id = 'id_example' # String | 
opts = {
  taxon_reposition: SpreeClient::TaxonReposition.new({taxon: SpreeClient::TaxonRepositionTaxon.new({new_parent_id: 1, new_position_idx: 1})}) # TaxonReposition | 
}

begin
  # Reposition a Taxon
  result = api_instance.reposition_taxon(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonsApi->reposition_taxon: #{e}"
end
```

#### Using the reposition_taxon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> reposition_taxon_with_http_info(id, opts)

```ruby
begin
  # Reposition a Taxon
  data, status_code, headers = api_instance.reposition_taxon_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonsApi->reposition_taxon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **taxon_reposition** | [**TaxonReposition**](TaxonReposition.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## show_taxon

> <Resource> show_taxon(id, opts)

Return a Taxon

Returns a Taxon

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxonsApi.new
id = 'id_example' # String | 
opts = {
  include: 'taxonomy,parent,children' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Taxon
  result = api_instance.show_taxon(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonsApi->show_taxon: #{e}"
end
```

#### Using the show_taxon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_taxon_with_http_info(id, opts)

```ruby
begin
  # Return a Taxon
  data, status_code, headers = api_instance.show_taxon_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonsApi->show_taxon_with_http_info: #{e}"
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


## taxons_list

> <ResourcesList> taxons_list(opts)

Return a list of Taxons

Returns a list of Taxons

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxonsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'taxonomy,parent,children', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_taxonomy_id_eq: '1', # String | 
  filter_name_cont: 'Shirts' # String | 
}

begin
  # Return a list of Taxons
  result = api_instance.taxons_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonsApi->taxons_list: #{e}"
end
```

#### Using the taxons_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> taxons_list_with_http_info(opts)

```ruby
begin
  # Return a list of Taxons
  data, status_code, headers = api_instance.taxons_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonsApi->taxons_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_taxonomy_id_eq** | **String** |  | [optional] |
| **filter_name_cont** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## update_taxon

> <Resource> update_taxon(id, opts)

Update a Taxon

Updates a Taxon

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::TaxonsApi.new
id = 'id_example' # String | 
opts = {
  include: 'taxonomy,parent,children', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_taxon_params: SpreeClient::UpdateTaxonParams.new({taxon: SpreeClient::UpdateTaxonParamsTaxon.new}) # UpdateTaxonParams | 
}

begin
  # Update a Taxon
  result = api_instance.update_taxon(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonsApi->update_taxon: #{e}"
end
```

#### Using the update_taxon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_taxon_with_http_info(id, opts)

```ruby
begin
  # Update a Taxon
  data, status_code, headers = api_instance.update_taxon_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling TaxonsApi->update_taxon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_taxon_params** | [**UpdateTaxonParams**](UpdateTaxonParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

