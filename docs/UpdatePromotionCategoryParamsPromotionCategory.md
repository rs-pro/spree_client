# SpreeClient::UpdatePromotionCategoryParamsPromotionCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Update the name of this Promotion Category. |  |
| **code** | **String** | Change or remove the code for this Promotion Category. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdatePromotionCategoryParamsPromotionCategory.new(
  name: Promotions Used in 2021,
  code: 2021-PROMOS
)
```

