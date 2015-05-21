require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class CohabitatUser < OmniAuth::Strategies::OAuth2
      option :name, 'cohabitat_user'

      option :client_options, {
        :site          => "#{ENV["OMNIAUTH_COHABITAT_USER_BASE_URL"] || "https://konto.cohabitat.net"}",
        :token_url     => "#{ENV["OMNIAUTH_COHABITAT_USER_BASE_URL"] || "https://konto.cohabitat.net"}/oauth/token",
        :authorize_url => "#{ENV["OMNIAUTH_COHABITAT_USER_BASE_URL"] || "https://konto.cohabitat.net"}/oauth/authorize/User",
      }

      uid { raw_info["id"] }

      info do
        {
          email: raw_info["email"]
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/oauth/user_info.json').parsed
      end
    end
  end
end
