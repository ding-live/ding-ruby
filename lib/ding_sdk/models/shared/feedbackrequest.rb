# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  

    class FeedbackRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # Your customer UUID, which can be found in the API settings in the dashboard.
      field :customer_uuid, ::String, { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('customer_uuid') } }
      # An E.164 formatted phone number.
      field :phone_number, ::String, { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('phone_number') } }
      # The type of the feedback.
      field :status, ::DingSDK::Shared::FeedbackRequestStatus, { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::DingSDK::Shared::FeedbackRequestStatus, false) } }


      sig { params(customer_uuid: ::String, phone_number: ::String, status: ::DingSDK::Shared::FeedbackRequestStatus).void }
      def initialize(customer_uuid: nil, phone_number: nil, status: nil)
        @customer_uuid = customer_uuid
        @phone_number = phone_number
        @status = status
      end
    end
  end
end
