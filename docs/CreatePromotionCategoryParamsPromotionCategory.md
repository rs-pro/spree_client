# SpreeClient::CreatePromotionCategoryParamsPromotionCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Give this Promotion Category a name. |  |
| **code** | **String** | Give this promotion category a code. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreatePromotionCategoryParamsPromotionCategory.new(
  name: Promotions Used in 2021,
  code: 2021-PROMOS
)
```

