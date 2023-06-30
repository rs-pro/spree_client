# SpreeClient::UpdatePromotionActionParamsPromotionAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Set the Type of Promotion Action you wish to use. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdatePromotionActionParamsPromotionAction.new(
  type: Spree::Promotion::Actions::CreateAdjustment
)
```

