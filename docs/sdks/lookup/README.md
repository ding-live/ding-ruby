# Lookup


## Overview

Retrieve up-to-date metadata about a specific phone number

### Available Operations

* [lookup](#lookup) - Lookup a phone number

## lookup

Lookup a phone number

### Example Usage

```ruby
require_relative ding_sdk


s = DingSDK::Ding.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"YOUR_API_KEY",
  )
)

   
req = Operations::LookupRequest.new(
  headers=Operations::LookupRequest.new(
    customer_uuid="6e93aa15-9177-4d09-8395-b69ce50db1c8",
    lookup_request=Shared::LookupRequest.new(
      phone_number="+1234567890",
    ),
  ),
  lookup_request=Shared::LookupRequest.new(
    phone_number="+1234567890",
  ),
)
    
res = s.lookup.lookup(req)

if ! res.lookup_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `customer_uuid`                                               | *String*                                                      | :heavy_check_mark:                                            | N/A                                                           |
| `lookup_request`                                              | [Shared::LookupRequest](../../models/shared/lookuprequest.md) | :heavy_minus_sign:                                            | N/A                                                           |


### Response

**[T.nilable(Operations::LookupResponse)](../../models/operations/lookupresponse.md)**

