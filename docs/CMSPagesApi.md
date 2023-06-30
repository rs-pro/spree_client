# SpreeClient::CMSPagesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cms_pages_list**](CMSPagesApi.md#cms_pages_list) | **GET** /api/v2/platform/cms_pages | Return a list of CMS Pages |
| [**create_cms_page**](CMSPagesApi.md#create_cms_page) | **POST** /api/v2/platform/cms_pages | Create a CMS Page |
| [**delete_cms_page**](CMSPagesApi.md#delete_cms_page) | **DELETE** /api/v2/platform/cms_pages/{id} | Delete a CMS Page |
| [**show_cms_page**](CMSPagesApi.md#show_cms_page) | **GET** /api/v2/platform/cms_pages/{id} | Return a CMS Page |
| [**update_cms_page**](CMSPagesApi.md#update_cms_page) | **PATCH** /api/v2/platform/cms_pages/{id} | Update a CMS Page |


## cms_pages_list

> <ResourcesList> cms_pages_list(opts)

Return a list of CMS Pages

Returns a list of CMS Pages

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::CMSPagesApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'cms_sections', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_type_eq: 'Spree::Cms::Pages::FeaturePage', # String | 
  filter_locale_eq: 'en', # String | 
  filter_title_cont: 'About Us' # String | 
}

begin
  # Return a list of CMS Pages
  result = api_instance.cms_pages_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSPagesApi->cms_pages_list: #{e}"
end
```

#### Using the cms_pages_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> cms_pages_list_with_http_info(opts)

```ruby
begin
  # Return a list of CMS Pages
  data, status_code, headers = api_instance.cms_pages_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSPagesApi->cms_pages_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_type_eq** | **String** |  | [optional] |
| **filter_locale_eq** | **String** |  | [optional] |
| **filter_title_cont** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## create_cms_page

> <Resource> create_cms_page(opts)

Create a CMS Page

Creates a CMS Page

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::CMSPagesApi.new
opts = {
  include: 'cms_sections', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_cms_page_request: SpreeClient::CreateFeatureCmsPageParams.new({cms_page: SpreeClient::CreateFeatureCmsPageParamsCmsPage.new({title: 'Featured Product', type: 'Spree::Cms::Pages::FeaturePage', locale: 'en-US'})}) # CreateCmsPageRequest | 
}

begin
  # Create a CMS Page
  result = api_instance.create_cms_page(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSPagesApi->create_cms_page: #{e}"
end
```

#### Using the create_cms_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_cms_page_with_http_info(opts)

```ruby
begin
  # Create a CMS Page
  data, status_code, headers = api_instance.create_cms_page_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSPagesApi->create_cms_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_cms_page_request** | [**CreateCmsPageRequest**](CreateCmsPageRequest.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_cms_page

> delete_cms_page(id)

Delete a CMS Page

Deletes a CMS Page

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::CMSPagesApi.new
id = 'id_example' # String | 

begin
  # Delete a CMS Page
  api_instance.delete_cms_page(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSPagesApi->delete_cms_page: #{e}"
end
```

#### Using the delete_cms_page_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cms_page_with_http_info(id)

```ruby
begin
  # Delete a CMS Page
  data, status_code, headers = api_instance.delete_cms_page_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSPagesApi->delete_cms_page_with_http_info: #{e}"
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


## show_cms_page

> <Resource> show_cms_page(id, opts)

Return a CMS Page

Returns a CMS Page

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::CMSPagesApi.new
id = 'id_example' # String | 
opts = {
  include: 'cms_sections' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a CMS Page
  result = api_instance.show_cms_page(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSPagesApi->show_cms_page: #{e}"
end
```

#### Using the show_cms_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_cms_page_with_http_info(id, opts)

```ruby
begin
  # Return a CMS Page
  data, status_code, headers = api_instance.show_cms_page_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSPagesApi->show_cms_page_with_http_info: #{e}"
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


## update_cms_page

> <Resource> update_cms_page(id, opts)

Update a CMS Page

Updates a CMS Page

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::CMSPagesApi.new
id = 'id_example' # String | 
opts = {
  include: 'cms_sections', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_cms_page_request: SpreeClient::UpdateFeatureCmsPageParams.new({cms_page: SpreeClient::UpdateFeatureCmsPageParamsCmsPage.new}) # UpdateCmsPageRequest | 
}

begin
  # Update a CMS Page
  result = api_instance.update_cms_page(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSPagesApi->update_cms_page: #{e}"
end
```

#### Using the update_cms_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_cms_page_with_http_info(id, opts)

```ruby
begin
  # Update a CMS Page
  data, status_code, headers = api_instance.update_cms_page_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling CMSPagesApi->update_cms_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_cms_page_request** | [**UpdateCmsPageRequest**](UpdateCmsPageRequest.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json

