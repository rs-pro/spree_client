# SpreeClient::UpdateOptionValueParamsOptionValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **presentation** | **String** |  | [optional] |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdateOptionValueParamsOptionValue.new(
  name: red,
  presentation: Red,
  public_metadata: null,
  private_metadata: null
)
```

