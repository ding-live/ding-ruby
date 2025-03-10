# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module DingSDK
  extend T::Sig

  SERVERS = [
    'https://api.ding.live/v1', # 1 - The production Ding API server
  ].freeze
  # Contains the list of servers available to the SDK

  class SDKConfiguration < ::Crystalline::FieldAugmented
    extend T::Sig

    field :client, T.nilable(Faraday::Connection)
    field :security_source, T.nilable(T.proc.returns(T.nilable(::DingSDK::Shared::Security)))
    field :server_url, T.nilable(String)
    field :server_idx, T.nilable(Integer)
    field :language, String
    field :openapi_doc_version, String
    field :sdk_version, String
    field :gen_version, String
    field :user_agent, String



    sig { params(client: T.nilable(Faraday::Connection), security: T.nilable(::DingSDK::Shared::Security), security_source: T.nilable(T.proc.returns(::DingSDK::Shared::Security)), server_url: T.nilable(String), server_idx: T.nilable(Integer)).void }
    def initialize(client, security, security_source, server_url, server_idx)
      @client = client
      @server_url = server_url
      @server_idx = server_idx.nil? ? 0 : server_idx
      raise StandardError, "Invalid server index #{server_idx}" if @server_idx.negative? || @server_idx >= SERVERS.length
      if !security_source.nil?
        @security_source = security_source
      elsif !security.nil?
        @security_source = -> { security }
      end
      @language = 'ruby'
      @openapi_doc_version = '1.0.0'
      @sdk_version = '0.11.58'
      @gen_version = '2.545.4'
      @user_agent = 'speakeasy-sdk/ruby 0.11.58 2.545.4 1.0.0 ding_sdk'
    end

    sig { returns([String, T::Hash[Symbol, String]]) }
    def get_server_details
      return [@server_url.delete_suffix('/'), {}] if !@server_url.nil?
      [SERVERS[@server_idx], {}]
    end
  end
end
