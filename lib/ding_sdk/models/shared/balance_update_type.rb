# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  

    class BalanceUpdateType < T::Enum
      enums do
        UNKNOWN = new('unknown')
        AUTHENTICATION = new('authentication')
        ATTEMPT = new('attempt')
        ATTEMPT_PENDING = new('attempt_pending')
        ATTEMPT_SUCCESS = new('attempt_success')
        AUTHENTICATION_PENDING = new('authentication_pending')
        AUTHENTICATION_SUCCESS = new('authentication_success')
      end
    end
  end
end
