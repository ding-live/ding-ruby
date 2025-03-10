# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  

    class FeedbackResponse < ::Crystalline::FieldAugmented
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
