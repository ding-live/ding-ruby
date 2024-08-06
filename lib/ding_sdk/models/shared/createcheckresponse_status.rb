# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  
    # CreateCheckResponseStatus - The status of the check. Possible values are:
    #   * `valid` - The code is valid.
    #   * `invalid` - The code is invalid.
    #   * `without_attempt` - No attempt was sent yet, so a check cannot be completed.
    #   * `rate_limited` - The authentication was rate limited and cannot be checked.
    #   * `already_validated` - The authentication has already been validated.
    #   * `expired_auth` - The authentication has expired and cannot be checked.
    # 
    class CreateCheckResponseStatus < T::Enum
      enums do
        VALID = new('valid')
        INVALID = new('invalid')
        WITHOUT_ATTEMPT = new('without_attempt')
        RATE_LIMITED = new('rate_limited')
        ALREADY_VALIDATED = new('already_validated')
        EXPIRED_AUTH = new('expired_auth')
      end
    end

  end
end
