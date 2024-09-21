# Ding Ruby SDK

The Ding Ruby library provides convenient access to the Ding API from applications written in the Ruby language.

<!-- Start Summary [summary] -->
## Summary

Ding: The OTP API allows you to send authentication codes to your users using their phone numbers.
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents

* [SDK Installation](#sdk-installation)
* [SDK Example Usage](#sdk-example-usage)
* [Available Resources and Operations](#available-resources-and-operations)
* [Server Selection](#server-selection)
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
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>


### [Lookup](docs/sdks/lookup/README.md)

* [lookup](docs/sdks/lookup/README.md#lookup) - Perform a phone number lookup

### [Otp](docs/sdks/otp/README.md)

* [check](docs/sdks/otp/README.md#check) - Check a code
* [create_authentication](docs/sdks/otp/README.md#create_authentication) - Send a code
* [feedback](docs/sdks/otp/README.md#feedback) - Send feedback
* [retry](docs/sdks/otp/README.md#retry) - Perform a retry

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Server Selection [server] -->
## Server Selection

## Server Selection

### Select Server by Index

You can override the default server globally by passing a server index to the `server_idx: int` optional parameter when initializing the SDK client instance. The selected server will then be used as the default on the operations that use it. This table lists the indexes associated with the available servers:

| # | Server | Variables |
| - | ------ | --------- |
| 0 | `https://api.ding.live/v1` | None |




### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url: str` optional parameter when initializing the SDK client instance. For example:
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
