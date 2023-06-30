# SpreeClient::UpdateFeaturedArticleCmsSectionParamsCmsSection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Update this section name. | [optional] |
| **type** | **String** | Change the section type. | [optional] |
| **position** | **Integer** | Pass the position that you want this section to appear in. (The list is not zero indexed, so the first item is position: &#x60;1&#x60;) | [optional] |
| **linked_resource_type** | **String** | Set the resource type that this section links to. | [optional] |
| **linked_resource_id** | **String** | Change the ID of the resource that you would like this section to link to. | [optional] |
| **fit** | **String** | This value is used by front end developers to set CSS classes for content that fits the screen edge-to-edge, or stays within the boundaries of the central container. | [optional] |
| **gutters** | **String** | This value is used by front end developers for styling the section padding. | [optional] |
| **button_text** | **String** | Update the text value of the button used in this section. | [optional] |
| **title** | **String** | Update the title for the Section. | [optional] |
| **subtitle** | **String** | Update the subtitle for the Section. | [optional] |
| **rte_content** | **String** | Update the content here, this can be rich text editor content. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdateFeaturedArticleCmsSectionParamsCmsSection.new(
  name: null,
  type: Spree::Cms::Sections::ProductCarousel,
  position: 2,
  linked_resource_type: Spree::Taxon,
  linked_resource_id: 1,
  fit: Screen,
  gutters: No Gutters,
  button_text: Click Here,
  title: Shop Today,
  subtitle: Save Big!,
  rte_content: Lots of text and content goes here.
)
```

