# SpreeClient::UpdateTaxonParamsTaxon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taxonomy_id** | **String** |  | [optional] |
| **parent_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdateTaxonParamsTaxon.new(
  taxonomy_id: null,
  parent_id: null,
  name: null,
  public_metadata: null,
  private_metadata: null
)
```

