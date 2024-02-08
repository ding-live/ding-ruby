# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  

    class LookupResponse < ::DingSDK::Utils::FieldAugmented
      extend T::Sig

      # The carrier of the phone number.
      field :carrier, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('carrier') } }
      # The ISO 3166-1 alpha-2 country code of the phone number.
      field :country_code, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('country_code') } }
      # The type of phone line.
      field :line_type, T.nilable(::DingSDK::Shared::LineType), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('line_type'), 'decoder': Utils.enum_from_string(::DingSDK::Shared::LineType, true) } }
      # The mobile country code of the phone number.
      field :mcc, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('mcc') } }
      # The mobile network code of the phone number.
      field :mnc, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('mnc') } }
      # Whether the phone number has been ported.
      field :number_ported, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('number_ported') } }
      # An E.164 formatted phone number.
      field :phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('phone_number') } }


      sig { params(carrier: T.nilable(::String), country_code: T.nilable(::String), line_type: T.nilable(::DingSDK::Shared::LineType), mcc: T.nilable(::String), mnc: T.nilable(::String), number_ported: T.nilable(T::Boolean), phone_number: T.nilable(::String)).void }
      def initialize(carrier: nil, country_code: nil, line_type: nil, mcc: nil, mnc: nil, number_ported: nil, phone_number: nil)
        @carrier = carrier
        @country_code = country_code
        @line_type = line_type
        @mcc = mcc
        @mnc = mnc
        @number_ported = number_ported
        @phone_number = phone_number
      end
    end
  end
end