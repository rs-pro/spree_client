# SpreeClient::UpdateStandardCmsPageParamsCmsPage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Update the page title. | [optional] |
| **type** | **String** | Change the type of page. | [optional] |
| **meta_title** | **String** | Update the meta title for this page, this appears in the title bar of the browser. | [optional] |
| **content** | **String** | Update the text content of a standard page, this can be HTML from a rich text editor. | [optional] |
| **meta_description** | **String** | Update the meta description, used for SEO and displayed in search results. | [optional] |
| **visible** | **Boolean** | This page is publicly visible when set to &#x60;true&#x60;. | [optional] |
| **slug** | **String** | Update the slug for this page. | [optional] |
| **locale** | **String** | Update the language of this page. | [optional] |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::UpdateStandardCmsPageParamsCmsPage.new(
  title: About Us,
  type: null,
  meta_title: Learn More About Super-Shop,
  content: Lot&#39;s of text..,
  meta_description: Learn more about us on this page here...,
  visible: null,
  slug: about-us,
  locale: en-US
)
```

