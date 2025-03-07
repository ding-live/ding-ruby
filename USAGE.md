<!-- Start SDK Example Usage [usage] -->
### Send a code

Send an OTP code to a user's phone number.


```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: ::DingSDK::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
    )

req = ::DingSDK::Shared::CreateAuthenticationRequest.new(
  customer_uuid: "cf2edc1c-7fc6-48fb-86da-b7508c6b7b71",
  locale: "fr-FR",
  phone_number: "+1234567890",
)

res = s.otp.create_authentication(req)

if ! res.create_authentication_response.nil?
  # handle response
end

```

### Check a code

Check that a code entered by a user is valid.


```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: ::DingSDK::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
    )

req = ::DingSDK::Shared::CreateCheckRequest.new(
  authentication_uuid: "eebe792b-2fcc-44a0-87f1-650e79259e02",
  check_code: "123456",
  customer_uuid: "64f66a7c-4b2c-4131-a8ff-d5b954cca05f",
)

res = s.otp.check(req)

if ! res.create_check_response.nil?
  # handle response
end

```

### Perform a retry

Perform a retry if a user has not received the code.


```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: ::DingSDK::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
    )

req = ::DingSDK::Shared::RetryAuthenticationRequest.new(
  authentication_uuid: "a4e4548a-1f7b-451a-81cb-a68ed5aff3b0",
  customer_uuid: "28532118-1b33-420a-b57b-648c9bf85fee",
)

res = s.otp.retry(req)

if ! res.retry_authentication_response.nil?
  # handle response
end

```

### Send feedback

Send feedback about the authentication process.


```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: ::DingSDK::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
    )

req = ::DingSDK::Shared::FeedbackRequest.new(
  customer_uuid: "cc0f6c04-40de-448f-8301-3cb0e6565dff",
  phone_number: "+1234567890",
  status: ::DingSDK::Shared::FeedbackRequestStatus::ONBOARDED,
)

res = s.otp.feedback(req)

if ! res.feedback_response.nil?
  # handle response
end

```

### Get authentication status

Get the status of an authentication.


```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: ::DingSDK::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
    )

res = s.otp.get_authentication_status(auth_uuid="d8446450-f2fa-4dd9-806b-df5b8c661f23")

if ! res.authentication_status_response.nil?
  # handle response
end

```

### Look up for phone number

Perform a phone number lookup.


```ruby
require 'ding_sdk'

s = ::DingSDK::Ding.new(
      security: ::DingSDK::Shared::Security.new(
        api_key: "YOUR_API_KEY",
      ),
    )

res = s.lookup.lookup(customer_uuid="69a197d9-356c-45d1-a807-41874e16b555", phone_number="<value>", type=[
  ::DingSDK::Operations::Type::CNAM,
])

if ! res.lookup_response.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->