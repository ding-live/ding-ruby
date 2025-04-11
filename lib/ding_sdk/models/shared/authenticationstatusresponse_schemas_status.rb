# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Models
    module Shared
    
      # AuthenticationStatusResponseSchemasStatus - The status of the attempt. Possible values are:
      #   * `pending` - The attempt is pending.
      #   * `delivered` - The attempt was delivered.
      #   * `failed` - The attempt failed.
      #   * `rate_limited` - The authentication was rate limited and cannot be retried.
      #   * `expired` - The authentication has expired and cannot be retried.
      # 
      class AuthenticationStatusResponseSchemasStatus < T::Enum
        enums do
          PENDING = new('pending')
          DELIVERED = new('delivered')
          FAILED = new('failed')
          RATE_LIMITED = new('rate_limited')
          EXPIRED = new('expired')
        end
      end
    end
  end
end
