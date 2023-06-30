# SpreeClient::UsersApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user**](UsersApi.md#create_user) | **POST** /api/v2/platform/users | Create a User |
| [**delete_user**](UsersApi.md#delete_user) | **DELETE** /api/v2/platform/users/{id} | Delete a User |
| [**show_user**](UsersApi.md#show_user) | **GET** /api/v2/platform/users/{id} | Return a User |
| [**update_user**](UsersApi.md#update_user) | **PATCH** /api/v2/platform/users/{id} | Update a User |
| [**users_list**](UsersApi.md#users_list) | **GET** /api/v2/platform/users | Return a list of Users |


## create_user

> <Resource> create_user(opts)

Create a User

Creates a User

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::UsersApi.new
opts = {
  include: 'ship_address,bill_address', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  create_user_params: SpreeClient::CreateUserParams.new({user: SpreeClient::CreateUserParamsUser.new({email: 'email_example', password: 'password_example', password_confirmation: 'password_confirmation_example'})}) # CreateUserParams | 
}

begin
  # Create a User
  result = api_instance.create_user(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling UsersApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> create_user_with_http_info(opts)

```ruby
begin
  # Create a User
  data, status_code, headers = api_instance.create_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling UsersApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **create_user_params** | [**CreateUserParams**](CreateUserParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## delete_user

> delete_user(id)

Delete a User

Deletes a User

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::UsersApi.new
id = 'id_example' # String | 

begin
  # Delete a User
  api_instance.delete_user(id)
rescue SpreeClient::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(id)

```ruby
begin
  # Delete a User
  data, status_code, headers = api_instance.delete_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SpreeClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_with_http_info: #{e}"
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


## show_user

> <Resource> show_user(id, opts)

Return a User

Returns a User

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::UsersApi.new
id = 'id_example' # String | 
opts = {
  include: 'ship_address,bill_address' # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
}

begin
  # Return a User
  result = api_instance.show_user(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling UsersApi->show_user: #{e}"
end
```

#### Using the show_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_user_with_http_info(id, opts)

```ruby
begin
  # Return a User
  data, status_code, headers = api_instance.show_user_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling UsersApi->show_user_with_http_info: #{e}"
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


## update_user

> <Resource> update_user(id, opts)

Update a User

Updates a User

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::UsersApi.new
id = 'id_example' # String | 
opts = {
  include: 'ship_address,bill_address', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  update_user_params: SpreeClient::UpdateUserParams.new({user: SpreeClient::UpdateUserParamsUser.new}) # UpdateUserParams | 
}

begin
  # Update a User
  result = api_instance.update_user(id, opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling UsersApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_user_with_http_info(id, opts)

```ruby
begin
  # Update a User
  data, status_code, headers = api_instance.update_user_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling UsersApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **update_user_params** | [**UpdateUserParams**](UpdateUserParams.md) |  | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.api+json


## users_list

> <ResourcesList> users_list(opts)

Return a list of Users

Returns a list of Users

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::UsersApi.new
opts = {
  page: 1, # Integer | 
  per_page: 50, # Integer | 
  include: 'ship_address,bill_address', # String | Select which associated resources you would like to fetch, see: <a href=\"https://jsonapi.org/format/#fetching-includes\">https://jsonapi.org/format/#fetching-includes</a>
  filter_user_id_eq: '1', # String | 
  filter_email_cont: 'spree@example.com' # String | 
}

begin
  # Return a list of Users
  result = api_instance.users_list(opts)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling UsersApi->users_list: #{e}"
end
```

#### Using the users_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> users_list_with_http_info(opts)

```ruby
begin
  # Return a list of Users
  data, status_code, headers = api_instance.users_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling UsersApi->users_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **include** | **String** | Select which associated resources you would like to fetch, see: &lt;a href&#x3D;\&quot;https://jsonapi.org/format/#fetching-includes\&quot;&gt;https://jsonapi.org/format/#fetching-includes&lt;/a&gt; | [optional] |
| **filter_user_id_eq** | **String** |  | [optional] |
| **filter_email_cont** | **String** |  | [optional] |

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json

