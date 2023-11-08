# Otp


## Overview

Send OTP codes to your users using their phone numbers.

### Available Operations

* [check](#check) - Check an authentication code
* [create_autentication](#create_autentication) - Create an authentication
* [retry](#retry) - Retry an authentication

## check

Check an authentication code

### Example Usage

```ruby
require_relative ding_sdk


s = DingSDK::Ding.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"YOUR_API_KEY",
  )
)

   
req = Shared::CreateCheckRequest.new(
  request=Shared::CreateCheckRequest.new(
    authentication_uuid="e0e7b0e9-739d-424b-922f-1c2cb48ab077",
    check_code="123456",
    customer_uuid="8f1196d5-806e-4b71-9b24-5f96ec052808",
  ),
)
    
res = s.otp.check(req)

if ! res.create_check_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `request`                                                               | [Shared::CreateCheckRequest](../../models/shared/createcheckrequest.md) | :heavy_check_mark:                                                      | The request object to use for the request.                              |


### Response

**[T.nilable(Operations::CheckResponse)](../../models/operations/checkresponse.md)**


## create_autentication

Create an authentication

### Example Usage

```ruby
require_relative ding_sdk


s = DingSDK::Ding.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"YOUR_API_KEY",
  )
)

   
req = Shared::CreateAuthenticationRequest.new(
  request=Shared::CreateAuthenticationRequest.new(
    app_realm="string",
    app_version="string",
    callback_url="https://quiet-swing.com",
    customer_uuid="92ab9e1e-b217-45b1-bfcb-79a32fcc4c39",
    device_id="string",
    device_model="string",
    device_type=Shared::DeviceType::WEB,
    ip="97.139.118.123",
    is_returning_user=false,
    os_version="string",
    phone_number="+1234567890",
  ),
)
    
res = s.otp.create_autentication(req)

if ! res.create_authentication_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Shared::CreateAuthenticationRequest](../../models/shared/createauthenticationrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::CreateAutenticationResponse)](../../models/operations/createautenticationresponse.md)**


## retry

Retry an authentication

### Example Usage

```ruby
require_relative ding_sdk


s = DingSDK::Ding.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"YOUR_API_KEY",
  )
)

   
req = Shared::RetryAuthenticationRequest.new(
  request=Shared::RetryAuthenticationRequest.new(
    authentication_uuid="a74ee547-564d-487a-91df-37fb25413a91",
    customer_uuid="3c8b3a46-881e-4cdd-93a6-f7f238bf020a",
  ),
)
    
res = s.otp.retry(req)

if ! res.retry_authentication_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Shared::RetryAuthenticationRequest](../../models/shared/retryauthenticationrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(Operations::RetryResponse)](../../models/operations/retryresponse.md)**

