# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module DingSDK
  module Shared
  

    class AuthenticationStatusResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # A unique, user-defined identifier that will be included in webhook events.
      field :correlation_id, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('correlation_id') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Represents a collection of events that occur during the authentication process. Each event captures specific actions and outcomes related to the authentication attempts, checks, delivery statuses, and balance updates. The array can contain different types of events, each with its own structure and properties.
      field :events, T.nilable(T::Array[::Object]), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('events') } }
      # An E.164 formatted phone number.
      field :phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('phone_number') } }
      # [Signals](/guides/prevent-fraud#signals) are data points used to distinguish between fraudulent and legitimate users.
      field :signals, T.nilable(::DingSDK::Shared::Signals), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('signals') } }
      # The template id associated with the message content variant to be sent.
      field :template_id, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('template_id') } }
      # The UUID of the corresponding authentication.
      field :uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::DingSDK::Utils.field_name('uuid') } }


      sig { params(correlation_id: T.nilable(::String), created_at: T.nilable(::DateTime), events: T.nilable(T::Array[::Object]), phone_number: T.nilable(::String), signals: T.nilable(::DingSDK::Shared::Signals), template_id: T.nilable(::String), uuid: T.nilable(::String)).void }
      def initialize(correlation_id: nil, created_at: nil, events: nil, phone_number: nil, signals: nil, template_id: nil, uuid: nil)
        @correlation_id = correlation_id
        @created_at = created_at
        @events = events
        @phone_number = phone_number
        @signals = signals
        @template_id = template_id
        @uuid = uuid
      end
    end
  end
end
