# SpreeClient::UpdateCmsPageRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'spree_client'

SpreeClient::UpdateCmsPageRequest.openapi_one_of
# =>
# [
#   :'UpdateFeatureCmsPageParams',
#   :'UpdateHomepageCmsPageParams',
#   :'UpdateStandardCmsPageParams'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'spree_client'

SpreeClient::UpdateCmsPageRequest.build(data)
# => #<UpdateFeatureCmsPageParams:0x00007fdd4aab02a0>

SpreeClient::UpdateCmsPageRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `UpdateFeatureCmsPageParams`
- `UpdateHomepageCmsPageParams`
- `UpdateStandardCmsPageParams`
- `nil` (if no type matches)

