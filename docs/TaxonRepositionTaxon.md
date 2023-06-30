# SpreeClient::TaxonRepositionTaxon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **new_parent_id** | **Integer** | The ID of the new target parent Taxon. |  |
| **new_position_idx** | **Integer** | The new index position of the Taxon within the parent Taxon. |  |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::TaxonRepositionTaxon.new(
  new_parent_id: 1,
  new_position_idx: 1
)
```

