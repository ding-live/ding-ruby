# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Models
    module Shared
    

      class FeedbackRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # Your customer UUID, which can be found in the API settings in the dashboard.
        field :customer_uuid, ::String, { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('customer_uuid') } }
        # An E.164 formatted phone number.
        field :phone_number, ::String, { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('phone_number') } }
        # The type of the feedback.
        field :status, Models::Shared::FeedbackRequestStatus, { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(Models::Shared::FeedbackRequestStatus, false) } }


        sig { params(customer_uuid: ::String, phone_number: ::String, status: Models::Shared::FeedbackRequestStatus).void }
        def initialize(customer_uuid: nil, phone_number: nil, status: nil)
          @customer_uuid = customer_uuid
          @phone_number = phone_number
          @status = status
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @customer_uuid == other.customer_uuid
          return false unless @phone_number == other.phone_number
          return false unless @status == other.status
          true
        end
      end
    end
  end
end
