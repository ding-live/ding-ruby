# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  
    # AuthenticationStatusResponseStatus - The status of the delivery. Possible values are:
    #   * `unknown` - The status of the delivery is unknown.
    #   * `submitted` - The message has been submitted to the carrier.
    #   * `in_transit` - The message is in transit to the recipient.
    #   * `delivered` - The message has been delivered to the recipient.
    #   * `undeliverable` - The message could not be delivered to the recipient.
    # 
    class AuthenticationStatusResponseStatus < T::Enum
      enums do
        UNKNOWN = new('unknown')
        SUBMITTED = new('submitted')
        IN_TRANSIT = new('in_transit')
        DELIVERED = new('delivered')
        UNDELIVERABLE = new('undeliverable')
      end
    end
  end
end
