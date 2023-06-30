# SpreeClient::CreateZoneParamsZone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **default_tax** | **Boolean** |  | [optional] |
| **kind** | **String** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateZoneParamsZone.new(
  name: EU,
  description: All countries in the EU,
  default_tax: null,
  kind: state
)
```

