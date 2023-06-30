# SpreeClient::CreateHeroImageCmsSectionParamsCmsSection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Give this section a name. |  |
| **cms_page_id** | **String** | Set the &#x60;cms_page&#x60; ID that this section belongs to. |  |
| **type** | **String** | Set the section type. |  |
| **linked_resource_type** | **String** | Set the resource type that this section links to. | [optional] |
| **linked_resource_id** | **String** | Set the ID of the resource that you would like this section to link to. | [optional] |
| **fit** | **String** | This value is used by front end developers to set CSS classes for content that fits the screen edge-to-edge, or stays within the boundaries of the central container. | [optional] |
| **position** | **Integer** | Pass the position that you want this section to appear in. (The list is not zero indexed, so the first item is position: &#x60;1&#x60;) | [optional] |
| **gutters** | **String** | This value is used by front end developers for styling the section padding. | [optional] |
| **button_text** | **String** | Set the text value of the button used in this section. | [optional] |
| **title** | **String** | Create a title for the Hero Section. | [optional] |
| **cms_section_image_one** | **File** | Use a &#x60;multipart/form-data&#x60; request to upload assets. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateHeroImageCmsSectionParamsCmsSection.new(
  name: null,
  cms_page_id: null,
  type: Spree::Cms::Sections::HeroImage,
  linked_resource_type: Spree::Taxon,
  linked_resource_id: 1,
  fit: Screen,
  position: 2,
  gutters: No Gutters,
  button_text: Click Here,
  title: Shop Today,
  cms_section_image_one: null
)
```

