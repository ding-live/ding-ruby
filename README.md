# Ding Ruby SDK

The Ding Ruby library provides convenient access to the Ding API from applications written in the Ruby language.

<!-- Start Summary [summary] -->
## Summary

Ding: The OTP API allows you to send authentication codes to your users using their phone numbers.
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents
<!-- $toc-max-depth=2 -->
* [Ding Ruby SDK](#ding-ruby-sdk)
  * [SDK Installation](#sdk-installation)
  * [SDK Example Usage](#sdk-example-usage)
  * [SDK Example Usage](#sdk-example-usage-1)
  * [Available Resources and Operations](#available-resources-and-operations)
  * [Server Selection](#server-selection)
* [Development](#development)
  * [Maturity](#maturity)
  * [Contributions](#contributions)

<!-- End Table of Contents [toc] -->

<!-- Start SDK Installation [installation] -->
## SDK Installation

The SDK can be installed using [RubyGems](https://rubygems.org/):

```bash
gem install ding_sdk
```
<!-- End SDK Installation [installation] -->

## SDK Example Usage

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Send a code

Send an OTP code to a user's phone number.


```ruby
require 'ding_sdk'


s = ::DingSDK::Ding.new
s.config_security(
  ::DingSDK::Shared::Security.new(
    api_key: "YOUR_API_KEY",
  )
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


s = ::DingSDK::Ding.new
s.config_security(
  ::DingSDK::Shared::Security.new(
    api_key: "YOUR_API_KEY",
  )
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


s = ::DingSDK::Ding.new
s.config_security(
  ::DingSDK::Shared::Security.new(
    api_key: "YOUR_API_KEY",
  )
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


s = ::DingSDK::Ding.new
s.config_security(
  ::DingSDK::Shared::Security.new(
    api_key: "YOUR_API_KEY",
  )
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


s = ::DingSDK::Ding.new
s.config_security(
  ::DingSDK::Shared::Security.new(
    api_key: "YOUR_API_KEY",
  )
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


s = ::DingSDK::Ding.new
s.config_security(
  ::DingSDK::Shared::Security.new(
    api_key: "YOUR_API_KEY",
  )
)

    
res = s.lookup.lookup(customer_uuid="69a197d9-356c-45d1-a807-41874e16b555", phone_number="<value>", type=[
  ::DingSDK::Operations::Type::CNAM,
])

if ! res.lookup_response.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>


### [lookup](docs/sdks/lookup/README.md)

* [lookup](docs/sdks/lookup/README.md#lookup) - Look up for phone number

### [otp](docs/sdks/otp/README.md)

* [check](docs/sdks/otp/README.md#check) - Check a code
* [create_authentication](docs/sdks/otp/README.md#create_authentication) - Send a code
* [feedback](docs/sdks/otp/README.md#feedback) - Send feedback
* [get_authentication_status](docs/sdks/otp/README.md#get_authentication_status) - Get authentication status
* [retry](docs/sdks/otp/README.md#retry) - Perform a retry

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Server Selection [server] -->
## Server Selection

### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url (String)` optional parameter when initializing the SDK client instance. For example:
```ruby
require 'ding_sdk'


s = ::DingSDK::Ding.new(
      server_url: "https://api.ding.live/v1",
    )
s.config_security(
  ::DingSDK::Shared::Security.new(
    api_key: "YOUR_API_KEY",
  )
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
<!-- End Server Selection [server] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically.
Feel free to open a PR or a Github issue as a proof of concept and we'll do our best to include it in a future release!
