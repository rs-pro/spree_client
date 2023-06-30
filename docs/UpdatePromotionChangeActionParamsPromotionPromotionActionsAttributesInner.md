# SpreeClient::UpdatePromotionChangeActionParamsPromotionPromotionActionsAttributesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | To update an existing Promotion Action, you are required to pass the ID of the Promotion Action. | [optional] |
| **type** | **String** | Set the Type of Promotion Action you wish to use. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdatePromotionChangeActionParamsPromotionPromotionActionsAttributesInner.new(
  id: 22,
  type: Spree::Promotion::Actions::CreateAdjustment
)
```

