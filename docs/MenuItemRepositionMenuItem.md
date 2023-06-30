# SpreeClient::MenuItemRepositionMenuItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **new_parent_id** | **Integer** | The ID of the new target parent Menu Item. |  |
| **new_position_idx** | **Integer** | The new index position of the Menu Item within its parent |  |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::MenuItemRepositionMenuItem.new(
  new_parent_id: 1,
  new_position_idx: 1
)
```

