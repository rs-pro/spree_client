# SpreeClient::CreateRichTextCmsSectionParamsCmsSection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Give this section a name. |  |
| **cms_page_id** | **String** | Set the &#x60;cms_page&#x60; ID that this section belongs to. |  |
| **type** | **String** | Set the section type. |  |
| **position** | **Integer** | Pass the position that you want this section to appear in. (The list is not zero indexed, so the first item is position: &#x60;1&#x60;) | [optional] |
| **fit** | **String** | This value is used by front end developers to set CSS classes for content that fits the screen edge-to-edge, or stays within the boundaries of the central container. | [optional] |
| **rte_content** | **String** | Set the content, here, this can be rich text editor content. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateRichTextCmsSectionParamsCmsSection.new(
  name: null,
  cms_page_id: null,
  type: Spree::Cms::Sections::RichTextContent,
  position: 2,
  fit: Screen,
  rte_content: Lots of text and content goes here.
)
```

