# SpreeClient::ShippingCalculatorParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::ShippingCalculatorParams.new(
  type: Spree::Calculator::Shipping::FlatPercentItemTotal
)
```

