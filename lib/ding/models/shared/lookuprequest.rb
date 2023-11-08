# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module DingSDK
  module Shared

    class LookupRequest < DingSDK::Utils::FieldAugmented
      extend T::Sig

      # An E.164 formatted phone number to lookup.
      field :phone_number, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('phone_number') } }


      sig { params(phone_number: T.nilable(String)).void }
      def initialize(phone_number: nil)
        @phone_number = phone_number
      end
    end
  end
end