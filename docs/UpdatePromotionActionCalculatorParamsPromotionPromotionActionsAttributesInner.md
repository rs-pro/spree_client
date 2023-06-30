# SpreeClient::UpdatePromotionActionCalculatorParamsPromotionPromotionActionsAttributesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | To update an existing Promotion Action, you are required to pass the ID of the action you wish to update. | [optional] |
| **calculator_attributes** | [**UpdatePromotionActionCalculatorParamsPromotionPromotionActionsAttributesInnerAllOfCalculatorAttributes**](UpdatePromotionActionCalculatorParamsPromotionPromotionActionsAttributesInnerAllOfCalculatorAttributes.md) |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdatePromotionActionCalculatorParamsPromotionPromotionActionsAttributesInner.new(
  id: 22,
  calculator_attributes: null
)
```

