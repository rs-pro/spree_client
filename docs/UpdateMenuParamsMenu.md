# SpreeClient::UpdateMenuParamsMenu

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Update this Menu name. | [optional] |
| **location** | **String** | Update the location this menu appears in the website. | [optional] |
| **locale** | **String** | Change the language of this menu. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdateMenuParamsMenu.new(
  name: Main Menu,
  location: null,
  locale: en-US
)
```

