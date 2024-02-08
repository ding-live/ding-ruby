# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  
    # Status - The status of the authentication. Possible values are:
    #   * `pending` - The OTP code is being sent.
    #   * `rate_limited` - This user is rate-limited and cannot receive another code.
    #   * `spam_detected` - This attempt is flagged as spam. Go to the dashboard for more details.
    # 
    class Status < T::Enum
      enums do
        PENDING = new('pending')
        RATE_LIMITED = new('rate_limited')
        SPAM_DETECTED = new('spam_detected')
      end
    end

  end
end