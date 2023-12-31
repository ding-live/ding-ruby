# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'
module DingSDK
  extend T::Sig

  class Ding
    extend T::Sig

    attr_accessor :otp, :lookup

    attr_accessor :security, :language, :sdk_version, :gen_version

    sig do
      params(security: T.nilable(Shared::Security),
             server: String,
             server_url: String,
             url_params: T::Hash[Symbol, String],
             client: Faraday::Request).void
    end
    def initialize(security: nil,
                   server: nil,
                   server_url: nil,
                   url_params: nil,
                   client: nil)

      ## Instantiates the SDK configuring it with the provided parameters.
      # @param [Shared::Security] security The security details required for authentication
      # @param [String] server The server by name to use for all operations
      # @param [String] server_url The server URL to use for all operations
      # @param [Hash<Symbol, String>] url_params Parameters to optionally template the server URL with
      # @param [Faraday::Request] client The faraday HTTP client to use for all operations

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
      server = SERVER_PRODUCTION if server.nil?

      

      @sdk_configuration = SDKConfiguration.new(client, security, server_url, server)
      init_sdks
    end

    sig { params(params: T.nilable(T::Hash[Symbol, String])).void }
    def config_server_url(params)
      if !params.nil?
        @server_url = Utils.template_url(@server_url, params)
      end
      init_sdks
    end

    sig { params(server: String, params: T.nilable(T::Hash[Symbol, String])).void }
    def config_server(params)
      raise StandardError, 'Invalid server' if !SERVERS.include? server

      config_server_url(params)
      init_sdks
    end

    sig { params(security: Shared::Security).void }
    def config_security(security)
      @security = security
      @sdk_configuration.security = security
    end

    sig { void }
    def init_sdks
      @otp = Otp.new(@sdk_configuration)
      @lookup = Lookup.new(@sdk_configuration)
    end
  end
end
