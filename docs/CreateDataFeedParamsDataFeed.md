# SpreeClient::CreateDataFeedParamsDataFeed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **slug** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateDataFeedParamsDataFeed.new(
  name: First data feed,
  slug: first-data-feed,
  type: Spree::DataFeed::Google,
  active: null
)
```

