# SpreeClient::UpdatePromotionRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'spree_client'

SpreeClient::UpdatePromotionRequest.openapi_one_of
# =>
# [
#   :'UpdatePromotionActionCalculatorParams',
#   :'UpdatePromotionAddActionParams',
#   :'UpdatePromotionAddRuleParams',
#   :'UpdatePromotionChangeActionParams',
#   :'UpdatePromotionChangeCalculatorParams',
#   :'UpdatePromotionParams',
#   :'UpdatePromotionUpdateRuleParams'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'spree_client'

SpreeClient::UpdatePromotionRequest.build(data)
# => #<UpdatePromotionActionCalculatorParams:0x00007fdd4aab02a0>

SpreeClient::UpdatePromotionRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `UpdatePromotionActionCalculatorParams`
- `UpdatePromotionAddActionParams`
- `UpdatePromotionAddRuleParams`
- `UpdatePromotionChangeActionParams`
- `UpdatePromotionChangeCalculatorParams`
- `UpdatePromotionParams`
- `UpdatePromotionUpdateRuleParams`
- `nil` (if no type matches)

