# SpreeClient::CreateUserParamsUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **password** | **String** |  |  |
| **password_confirmation** | **String** |  |  |
| **selected_locale** | **String** |  | [optional] |
| **ship_address_id** | **String** |  | [optional] |
| **bill_address_id** | **String** |  | [optional] |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateUserParamsUser.new(
  email: null,
  first_name: null,
  last_name: null,
  password: null,
  password_confirmation: null,
  selected_locale: null,
  ship_address_id: null,
  bill_address_id: null,
  public_metadata: null,
  private_metadata: null
)
```

