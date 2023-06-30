# SpreeClient::CreatePromotionActionParamsPromotionAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Set the Type of Promotion Action you wish to use. |  |
| **promotion_id** | **String** | Set the ID of the promotion this action belongs to. |  |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreatePromotionActionParamsPromotionAction.new(
  type: Spree::Promotion::Actions::CreateAdjustment,
  promotion_id: 22
)
```

