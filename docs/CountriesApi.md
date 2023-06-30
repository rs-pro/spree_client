# SpreeClient::CountriesApi

All URIs are relative to *http://localhost:4000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**countries_list**](CountriesApi.md#countries_list) | **GET** /api/v2/platform/countries | Returns a list of Countries |
| [**show_country**](CountriesApi.md#show_country) | **GET** /api/v2/platform/countries/{id} | Returns a Country |


## countries_list

> <ResourcesList> countries_list

Returns a list of Countries

Returns a list of Countries

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::CountriesApi.new

begin
  # Returns a list of Countries
  result = api_instance.countries_list
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling CountriesApi->countries_list: #{e}"
end
```

#### Using the countries_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesList>, Integer, Hash)> countries_list_with_http_info

```ruby
begin
  # Returns a list of Countries
  data, status_code, headers = api_instance.countries_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesList>
rescue SpreeClient::ApiError => e
  puts "Error when calling CountriesApi->countries_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ResourcesList**](ResourcesList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json


## show_country

> <Resource> show_country(id)

Returns a Country

Returns a Country

### Examples

```ruby
require 'time'
require 'spree_client'
# setup authorization
SpreeClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpreeClient::CountriesApi.new
id = 'id_example' # String | 

begin
  # Returns a Country
  result = api_instance.show_country(id)
  p result
rescue SpreeClient::ApiError => e
  puts "Error when calling CountriesApi->show_country: #{e}"
end
```

#### Using the show_country_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> show_country_with_http_info(id)

```ruby
begin
  # Returns a Country
  data, status_code, headers = api_instance.show_country_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue SpreeClient::ApiError => e
  puts "Error when calling CountriesApi->show_country_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Resource**](Resource.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.api+json

