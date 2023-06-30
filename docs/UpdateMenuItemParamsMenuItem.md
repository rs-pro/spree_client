# SpreeClient::UpdateMenuItemParamsMenuItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Update the name of this Menu Item | [optional] |
| **code** | **String** | The Menu Item a code to identifies this Menu Item from others. This is especially useful when using Container type Menu Items to group items. | [optional] |
| **subtitle** | **String** | Set an optional subtitle for the Menu Item, this is useful if your menu has promotional links that require more than just a link name. | [optional] |
| **destination** | **String** | Used when the linked_resource_type is set to: URL | [optional] |
| **menu_id** | **Integer** | Specify the ID of the Menu this item belongs to. | [optional] |
| **new_window** | **Boolean** | When set to &#x60;true&#x60; the link will be opened in a new tab or window. | [optional] |
| **item_type** | **String** | Links are standard links, where as Containers are used to group links. | [optional] |
| **linked_resource_type** | **String** | Change the type of resource you want to link to, or set to: URL to use the destination field for an external link. | [optional] |
| **linked_resource_id** | **Integer** | The ID of the resource you are linking to. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdateMenuItemParamsMenuItem.new(
  name: T-Shirts,
  code: MEN-TS,
  subtitle: Shop men&#39;s T-Shirts,
  destination: https://getvendo.com,
  menu_id: 1,
  new_window: null,
  item_type: null,
  linked_resource_type: null,
  linked_resource_id: 1
)
```

