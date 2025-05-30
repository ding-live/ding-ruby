# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Models
    module Shared
    
      # RetryAuthenticationResponseStatus - The status of the retry. Possible values are:
      #   * `approved` - The retry was approved and a new code was sent.
      #   * `denied` - The retry was denied.
      #   * `no_attempt` - No attempt was sent yet, so a retry cannot be completed.
      #   * `rate_limited` - The authentication was rate limited and cannot be retried.
      #   * `expired_auth` - The authentication has expired and cannot be retried.
      #   * `already_validated` - The authentication has already been validated.
      # 
      class RetryAuthenticationResponseStatus < T::Enum
        enums do
          APPROVED = new('approved')
          DENIED = new('denied')
          NO_ATTEMPT = new('no_attempt')
          RATE_LIMITED = new('rate_limited')
          EXPIRED_AUTH = new('expired_auth')
          ALREADY_VALIDATED = new('already_validated')
        end
      end
    end
  end
end
