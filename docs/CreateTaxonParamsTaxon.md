# SpreeClient::CreateTaxonParamsTaxon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taxonomy_id** | **String** |  |  |
| **parent_id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateTaxonParamsTaxon.new(
  taxonomy_id: null,
  parent_id: null,
  name: null,
  public_metadata: {&quot;ability_to_recycle&quot;:&quot;90%&quot;},
  private_metadata: {&quot;profitability&quot;:2}
)
```

