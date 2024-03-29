# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  

    class FeedbackResponse < ::DingSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the feedback.
      field :uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('uuid') } }


      sig { params(uuid: T.nilable(::String)).void }
      def initialize(uuid: nil)
        @uuid = uuid
      end
    end
  end
end
