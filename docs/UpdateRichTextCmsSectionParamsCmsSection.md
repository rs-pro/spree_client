# SpreeClient::UpdateRichTextCmsSectionParamsCmsSection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Update this section name. | [optional] |
| **type** | **String** | Change the section type. | [optional] |
| **position** | **Integer** | Pass the position that you want this section to appear in. (The list is not zero indexed, so the first item is position: &#x60;1&#x60;) | [optional] |
| **fit** | **String** | This value is used by front end developers to set CSS classes for content that fits the screen edge-to-edge, or stays within the boundaries of the central container. | [optional] |
| **rte_content** | **String** | Update the content, here, this can be rich text editor content. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdateRichTextCmsSectionParamsCmsSection.new(
  name: null,
  type: Spree::Cms::Sections::ProductCarousel,
  position: 2,
  fit: Screen,
  rte_content: Lots of text and content goes here.
)
```

