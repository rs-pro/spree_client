# SpreeClient::UpdatePromotionChangeCalculatorParamsPromotionPromotionActionsAttributesInnerAllOfCalculatorAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | To set the Promotion Action Calculator pass the calculator type. Each Promotion action has certain Calculators available, to learn more visit TODO: [LINK] | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdatePromotionChangeCalculatorParamsPromotionPromotionActionsAttributesInnerAllOfCalculatorAttributes.new(
  type: Spree::Calculator::FlatPercentItemTotal
)
```

