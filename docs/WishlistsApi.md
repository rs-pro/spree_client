# SpreeClient::WishlistsApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_wishlist**](WishlistsApi.md#create_wishlist) | **POST** /api/v2/platform/wishlists | Create a Wishlist |
| [**delete_wishlist**](WishlistsApi.md#delete_wishlist) | **DELETE** /api/v2/platform/wishlists/{id} | Delete a Wishlist |
| [**show_wishlist**](WishlistsApi.md#show_wishlist) | **GET** /api/v2/platform/wishlists/{id} | Return a Wishlist |
| [**update_wishlist**](WishlistsApi.md#update_wishlist) | **PATCH** /api/v2/platform/wishlists/{id} | Update a Wishlist |
| [**wishlists_list**](WishlistsApi.md#wishlists_list) | **GET** /api/v2/platform/wishlists | Return a list of Wishlists |


## create_wishlist

> <Resource> create_wishlist(opts)

Create a Wishlist

Creates a Wishlist

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WishlistsApi.new
opts = {
  include: 'wished_items', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_wishlist_params: SpreeClient::CreateWishlistParams.new({wishlist: SpreeClient::CreateWishlistParamsWishlist.new({name: 'name_example', user_id: 'user_id_example'})}) # CreateWishlistParams | 
}

begin
  # Create a Wishlist
  result = api_instance.create_wishlist(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling WishlistsApi->create_wishlist: #{e}"
end
```

#### Using the create_wishlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_wishlist_with_http_info(opts)

```ruby
begin
  # Create a Wishlist
  data, status_code, headers = api_instance.create_wishlist_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling WishlistsApi->create_wishlist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_wishlist_params** | [**CreateWishlistParams**](CreateWishlistParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_wishlist

> delete_wishlist(id)

Delete a Wishlist

Deletes a Wishlist

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WishlistsApi.new
id = 'id_example' # String | 

begin
  # Delete a Wishlist
  api_instance.delete_wishlist(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling WishlistsApi->delete_wishlist: #{e}"
end
```

#### Using the delete_wishlist_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_wishlist_with_http_info(id)

```ruby
begin
  # Delete a Wishlist
  data, status_code, headers = api_instance.delete_wishlist_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling WishlistsApi->delete_wishlist_with_http_info: #{e}"
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


## show_wishlist

> <Resource> show_wishlist(id, opts)

Return a Wishlist

Returns a Wishlist

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WishlistsApi.new
id = 'id_example' # String | 
opts = {
  include: 'wished_items' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a Wishlist
  result = api_instance.show_wishlist(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling WishlistsApi->show_wishlist: #{e}"
end
```

#### Using the show_wishlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_wishlist_with_http_info(id, opts)

```ruby
begin
  # Return a Wishlist
  data, status_code, headers = api_instance.show_wishlist_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling WishlistsApi->show_wishlist_with_http_info: #{e}"
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


## update_wishlist

> <Resource> update_wishlist(id, opts)

Update a Wishlist

Updates a Wishlist

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WishlistsApi.new
id = 'id_example' # String | 
opts = {
  include: 'wished_items', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_wishlist_params: SpreeClient::UpdateWishlistParams.new({wishlist: SpreeClient::UpdateWishlistParamsWishlist.new}) # UpdateWishlistParams | 
}

begin
  # Update a Wishlist
  result = api_instance.update_wishlist(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling WishlistsApi->update_wishlist: #{e}"
end
```

#### Using the update_wishlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_wishlist_with_http_info(id, opts)

```ruby
begin
  # Update a Wishlist
  data, status_code, headers = api_instance.update_wishlist_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling WishlistsApi->update_wishlist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_wishlist_params** | [**UpdateWishlistParams**](UpdateWishlistParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## wishlists_list

> <ResourcesList> wishlists_list(opts)

Return a list of Wishlists

Returns a list of Wishlists

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::WishlistsApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'wished_items', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_name_cont: 'Birthday' # String | 
}

begin
  # Return a list of Wishlists
  result = api_instance.wishlists_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling WishlistsApi->wishlists_list: #{e}"
end
```

#### Using the wishlists_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> wishlists_list_with_http_info(opts)

```ruby
begin
  # Return a list of Wishlists
  data, status_code, headers = api_instance.wishlists_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling WishlistsApi->wishlists_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_name_cont** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json

