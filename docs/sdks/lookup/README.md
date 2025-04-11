# Lookup
(*lookup*)

## Overview

Retrieve up-to-date metadata about a specific phone number

### Available Operations

* [lookup](#lookup) - Look up for phone number

## lookup

Perform a phone number lookup.

### Example Usage

```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: Models::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
    )

res = s.lookup.lookup(customer_uuid="69a197d9-356c-45d1-a807-41874e16b555", phone_number="<value>", type=[
  Models::Operations::Type::CNAM,
])

if ! res.lookup_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `customer_uuid`                                                       | *::String*                                                            | :heavy_check_mark:                                                    | N/A                                                                   |
| `phone_number`                                                        | *::String*                                                            | :heavy_check_mark:                                                    | N/A                                                                   |
| `type`                                                                | T::Array<[Models::Operations::Type](../../models/operations/type.md)> | :heavy_minus_sign:                                                    | N/A                                                                   |

### Response

**[T.nilable(Models::Operations::LookupResponse)](../../models/operations/lookupresponse.md)**

