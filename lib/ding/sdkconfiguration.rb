# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig


  SERVER_PRODUCTION = 'production' # The production Ding API server
  SERVERS = {
    SERVER_PRODUCTION: 'https://api.ding.live/v1',
  }.freeze
  # Contains the list of servers available to the SDK


  class SDKConfiguration < OpenApiSDK::Utils::FieldAugmented
    extend T::Sig

    field :client, T.nilable(Faraday::Connection)
    field :security, Shared::Security
    field :server_url, T.nilable(String)
    field :server, T.nilable(String)
    field :server_defaults, Hash[Symbol, Hash[Symbol, String]], { 'default_factory': Hash}
    field :language, String
    field :openapi_doc_version, String
    field :sdk_version, String
    field :gen_version, String
    field :user_agent, String
  
    
    sig { params(client: Faraday::Connection, security: T.nilable(Shared::Security), server_url: T.nilable(String), server_idx: T.nilable(Integer), server_defaults: T::Hash[Symbol, String], globals: T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Object]]]).void }
    def initialize(client, security, server_url, server_idx, server_defaults, globals)
      @client = client
      @server = server_url.nil? ? '' : server_url
      @language = 'ruby'
      @openapi_doc_version = '1.0.0'
      @sdk_version = '0.1.0'
      @gen_version = '2.185.0'
      @user_agent = 'speakeasy-sdk/ruby 0.1.0 2.185.0 1.0.0 ding-sdk'
    end

    sig { returns([String, T::Hash[Symbol, String]]) }
    def get_server_details
      return [@server_url.delete_suffix('/'), {}] if !@server_url.nil?
      @server = SERVER_PRODUCTION if @server.nil?

      [SERVERS[@server], {}]
    end
  end
end
