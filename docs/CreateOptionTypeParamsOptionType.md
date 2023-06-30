# SpreeClient::CreateOptionTypeParamsOptionType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **presentation** | **String** |  |  |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateOptionTypeParamsOptionType.new(
  name: color,
  presentation: Color,
  public_metadata: null,
  private_metadata: null
)
```

