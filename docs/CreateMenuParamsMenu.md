# SpreeClient::CreateMenuParamsMenu

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Give this Menu a name. |  |
| **location** | **String** | Set the location this menu appears in the website. |  |
| **locale** | **String** | Set the language of this menu. |  |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateMenuParamsMenu.new(
  name: Main Menu,
  location: null,
  locale: en-US
)
```

