# SpreeClient::UpdateTaxonomyParamsTaxonomy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **position** | **Integer** | Pass the position that you want this Taxonomy to appear in. (The list is not zero indexed, so the first item is position: &#x60;1&#x60;) | [optional] |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdateTaxonomyParamsTaxonomy.new(
  name: null,
  position: 2,
  public_metadata: {&quot;ability_to_recycle&quot;:&quot;90%&quot;},
  private_metadata: {&quot;profitability&quot;:2}
)
```

