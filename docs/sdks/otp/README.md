# Otp


## Overview

Send OTP codes to your users using their phone numbers.

### Available Operations

* [check](#check) - Check a code
* [create_autentication](#create_autentication) - Send a code
* [retry](#retry) - Perform a retry

## check

Check a code

### Example Usage

```ruby
require_relative ding_sdk


s = ::DingSDK::Ding.new
s.config_security(
  security=::DingSDK::Shared::Security.new(
    api_key="YOUR_API_KEY",
  )
)


req = ::DingSDK::Shared::CreateCheckRequest.new(
  authentication_uuid="e0e7b0e9-739d-424b-922f-1c2cb48ab077",
  check_code="123456",
  customer_uuid="8f1196d5-806e-4b71-9b24-5f96ec052808",
)
    
res = s.otp.check(req)

if ! res.create_check_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                          | Type                                                                               | Required                                                                           | Description                                                                        |
| ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `request`                                                                          | [::DingSDK::Shared::CreateCheckRequest](../../models/shared/createcheckrequest.md) | :heavy_check_mark:                                                                 | The request object to use for the request.                                         |


### Response

**[T.nilable(::DingSDK::Operations::CheckResponse)](../../models/operations/checkresponse.md)**


## create_autentication

Send a code

### Example Usage

```ruby
require_relative ding_sdk


s = ::DingSDK::Ding.new
s.config_security(
  security=::DingSDK::Shared::Security.new(
    api_key="YOUR_API_KEY",
  )
)


req = ::DingSDK::Shared::CreateAuthenticationRequest.new(
  customer_uuid="eae192ab-9e1e-4b21-b5b1-bfcb79a32fcc",
  phone_number="+1234567890",
)
    
res = s.otp.create_autentication(req)

if ! res.create_authentication_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                            | Type                                                                                                 | Required                                                                                             | Description                                                                                          |
| ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| `request`                                                                                            | [::DingSDK::Shared::CreateAuthenticationRequest](../../models/shared/createauthenticationrequest.md) | :heavy_check_mark:                                                                                   | The request object to use for the request.                                                           |


### Response

**[T.nilable(::DingSDK::Operations::CreateAutenticationResponse)](../../models/operations/createautenticationresponse.md)**


## retry

Perform a retry

### Example Usage

```ruby
require_relative ding_sdk


s = ::DingSDK::Ding.new
s.config_security(
  security=::DingSDK::Shared::Security.new(
    api_key="YOUR_API_KEY",
  )
)


req = ::DingSDK::Shared::RetryAuthenticationRequest.new(
  authentication_uuid="a74ee547-564d-487a-91df-37fb25413a91",
  customer_uuid="3c8b3a46-881e-4cdd-93a6-f7f238bf020a",
)
    
res = s.otp.retry(req)

if ! res.retry_authentication_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                          | Type                                                                                               | Required                                                                                           | Description                                                                                        |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `request`                                                                                          | [::DingSDK::Shared::RetryAuthenticationRequest](../../models/shared/retryauthenticationrequest.md) | :heavy_check_mark:                                                                                 | The request object to use for the request.                                                         |


### Response

**[T.nilable(::DingSDK::Operations::RetryResponse)](../../models/operations/retryresponse.md)**

