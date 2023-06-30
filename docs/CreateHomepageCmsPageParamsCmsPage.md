# SpreeClient::CreateHomepageCmsPageParamsCmsPage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Give your page a title. |  |
| **type** | **String** | Set the type of page. |  |
| **meta_title** | **String** | Set the meta title for this page, this appears in the title bar of the browser. | [optional] |
| **meta_description** | **String** | Set a meta description, used for SEO and displayed in search results. | [optional] |
| **visible** | **Boolean** | This page is publicly visible when set to &#x60;true&#x60;. | [optional] |
| **locale** | **String** | The language this page is written in. |  |

## Example

```ruby
require 'spree_client'

instance = SpreeClient::CreateHomepageCmsPageParamsCmsPage.new(
  title: Our Flash Homepage,
  type: null,
  meta_title: Visit Our Store - Great Deals,
  meta_description: Discover great new products that we sell in this store...,
  visible: null,
  locale: en-US
)
```

