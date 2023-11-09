# Lookup


## Overview

Retrieve up-to-date metadata about a specific phone number

### Available Operations

* [lookup](#lookup) - Lookup a number

## lookup

Lookup a number

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
  path_params=Operations::LookupRequest.new(
    customer_uuid="6e93aa15-9177-4d09-8395-b69ce50db1c8",
    phone_number="string",
  ),
  headers=Operations::LookupRequest.new(
    customer_uuid="206704c1-f857-4246-a71d-63b35f5456af",
    phone_number="string",
  ),
)
    
res = s.lookup.lookup(req)

if ! res.lookup_response.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `customer_uuid`    | *String*           | :heavy_check_mark: | N/A                |
| `phone_number`     | *String*           | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(Operations::LookupResponse)](../../models/operations/lookupresponse.md)**

