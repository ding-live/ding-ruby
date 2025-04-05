# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  
    # AuthenticationStatusResponseSchemasType - The type of the event.
    class AuthenticationStatusResponseSchemasType < T::Enum
      enums do
        ATTEMPT = new('attempt')
        CHECK = new('check')
        DELIVERY_STATUS = new('delivery_status')
        BALANCE_UPDATE = new('balance_update')
      end
    end
  end
end
