# SpreeClient::UpdatePromotionChangeCalculatorParamsPromotionPromotionActionsAttributesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | To update an existing Promotion Action, you are required to pass the ID of the Promotion Action. | [optional] |
| **calculator_attributes** | [**UpdatePromotionChangeCalculatorParamsPromotionPromotionActionsAttributesInnerAllOfCalculatorAttributes**](UpdatePromotionChangeCalculatorParamsPromotionPromotionActionsAttributesInnerAllOfCalculatorAttributes.md) |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdatePromotionChangeCalculatorParamsPromotionPromotionActionsAttributesInner.new(
  id: 22,
  calculator_attributes: null
)
```

