# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'faraday/retry'
require 'sorbet-runtime'
require_relative 'utils/retries'

module DingSDK
  extend T::Sig

  class Ding
    extend T::Sig

    attr_accessor :otp, :lookup

    sig do
      params(
        client: T.nilable(Faraday::Connection),
        retry_config: T.nilable(::DingSDK::Utils::RetryConfig),
        security: T.nilable(::DingSDK::Shared::Security),
        security_source: T.nilable(T.proc.returns(::DingSDK::Shared::Security)),
        server_idx: T.nilable(Integer),
        server_url: T.nilable(String),
        url_params: T.nilable(T::Hash[Symbol, String])
      ).void
    end
    def initialize(client: nil, retry_config: nil, security: nil, security_source: nil, server_idx: nil, server_url: nil, url_params: nil)
      ## Instantiates the SDK configuring it with the provided parameters.
      # @param [T.nilable(Faraday::Connection)] client The faraday HTTP client to use for all operations
      # @param [T.nilable(::DingSDK::Utils::RetryConfig)] retry_config The retry configuration to use for all operations
      # @param [T.nilable(::DingSDK::Shared::Security)] security: The security details required for authentication
      # @param [T.proc.returns(T.nilable(::DingSDK::Shared::Security))] security_source: A function that returns security details required for authentication
      # @param [T.nilable(::Integer)] server_idx The index of the server to use for all operations
      # @param [T.nilable(::String)] server_url The server URL to use for all operations
      # @param [T.nilable(::Hash<::Symbol, ::String>)] url_params Parameters to optionally template the server URL with

      if client.nil?
        client = Faraday.new(request: {
                          params_encoder: Faraday::FlatParamsEncoder
                        }) do |f|
          f.request :multipart, {}
          # f.response :logger
        end
      end

      if !server_url.nil?
        if !url_params.nil?
          server_url = Utils.template_url(server_url, url_params)
        end
      end

      server_idx = 0 if server_idx.nil?
      @sdk_configuration = SDKConfiguration.new(
        client,
        retry_config,
        security,
        security_source,
        server_url,
        server_idx
      )
      init_sdks
    end

    sig { void }
    def init_sdks
      @otp = Otp.new(@sdk_configuration)
      @lookup = Lookup.new(@sdk_configuration)
    end
  end
end
