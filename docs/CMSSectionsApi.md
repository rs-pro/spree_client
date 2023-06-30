# SpreeClient::CMSSectionsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cms_sections_list**](CMSSectionsApi.md#cms_sections_list) | **GET** /api/v2/platform/cms_sections | Return a list of CMS Sections |
| [**create_cms_section**](CMSSectionsApi.md#create_cms_section) | **POST** /api/v2/platform/cms_sections | Create a CMS Section |
| [**delete_cms_section**](CMSSectionsApi.md#delete_cms_section) | **DELETE** /api/v2/platform/cms_sections/{id} | Delete a CMS Section |
| [**show_cms_section**](CMSSectionsApi.md#show_cms_section) | **GET** /api/v2/platform/cms_sections/{id} | Return a CMS Section |
| [**update_cms_section**](CMSSectionsApi.md#update_cms_section) | **PATCH** /api/v2/platform/cms_sections/{id} | Update a CMS Section |


## cms_sections_list

> <ResourcesList> cms_sections_list(opts)

Return a list of CMS Sections

Returns a list of CMS Sections

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::CMSSectionsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'product', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_name_eq: 'Hero' # String | 
}

begin
  # Return a list of CMS Sections
  result = api_instance.cms_sections_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSSectionsApi->cms_sections_list: #{e}"
end
```

#### Using the cms_sections_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> cms_sections_list_with_http_info(opts)

```ruby
begin
  # Return a list of CMS Sections
  data, status_code, headers = api_instance.cms_sections_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSSectionsApi->cms_sections_list_with_http_info: #{e}"
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


## create_cms_section

> <Resource> create_cms_section(opts)

Create a CMS Section

Creates a CMS Section

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::CMSSectionsApi.new
opts = {
  include: 'product', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_cms_section_request: SpreeClient::CreateFeaturedArticleCmsSectionParams.new({cms_section: SpreeClient::CreateFeaturedArticleCmsSectionParamsCmsSection.new({name: 'name_example', cms_page_id: 'cms_page_id_example', type: 'Spree::Cms::Sections::FeaturedArticle'})}) # CreateCmsSectionRequest | 
}

begin
  # Create a CMS Section
  result = api_instance.create_cms_section(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSSectionsApi->create_cms_section: #{e}"
end
```

#### Using the create_cms_section_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_cms_section_with_http_info(opts)

```ruby
begin
  # Create a CMS Section
  data, status_code, headers = api_instance.create_cms_section_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSSectionsApi->create_cms_section_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_cms_section_request** | [**CreateCmsSectionRequest**](CreateCmsSectionRequest.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_cms_section

> delete_cms_section(id)

Delete a CMS Section

Deletes a CMS Section

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::CMSSectionsApi.new
id = 'id_example' # String | 

begin
  # Delete a CMS Section
  api_instance.delete_cms_section(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSSectionsApi->delete_cms_section: #{e}"
end
```

#### Using the delete_cms_section_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cms_section_with_http_info(id)

```ruby
begin
  # Delete a CMS Section
  data, status_code, headers = api_instance.delete_cms_section_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSSectionsApi->delete_cms_section_with_http_info: #{e}"
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


## show_cms_section

> <Resource> show_cms_section(id, opts)

Return a CMS Section

Returns a CMS Section

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::CMSSectionsApi.new
id = 'id_example' # String | 
opts = {
  include: 'product' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a CMS Section
  result = api_instance.show_cms_section(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSSectionsApi->show_cms_section: #{e}"
end
```

#### Using the show_cms_section_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_cms_section_with_http_info(id, opts)

```ruby
begin
  # Return a CMS Section
  data, status_code, headers = api_instance.show_cms_section_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSSectionsApi->show_cms_section_with_http_info: #{e}"
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


## update_cms_section

> <Resource> update_cms_section(id, opts)

Update a CMS Section

Updates a CMS Section

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::CMSSectionsApi.new
id = 'id_example' # String | 
opts = {
  include: 'product', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_cms_section_request: SpreeClient::UpdateFeaturedArticleCmsSectionParams.new({cms_section: SpreeClient::UpdateFeaturedArticleCmsSectionParamsCmsSection.new}) # UpdateCmsSectionRequest | 
}

begin
  # Update a CMS Section
  result = api_instance.update_cms_section(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSSectionsApi->update_cms_section: #{e}"
end
```

#### Using the update_cms_section_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_cms_section_with_http_info(id, opts)

```ruby
begin
  # Update a CMS Section
  data, status_code, headers = api_instance.update_cms_section_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSSectionsApi->update_cms_section_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_cms_section_request** | [**UpdateCmsSectionRequest**](UpdateCmsSectionRequest.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

