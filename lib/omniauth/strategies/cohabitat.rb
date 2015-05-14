require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Cohabitat < OmniAuth::Strategies::OAuth2
      option :name, 'cohabitat'

      option :client_options, {
        :site          => 'https://konto.cohabitat.net/',
        :token_url     => 'https://konto.cohabitat.net/oauth/token',
        :authorize_url => 'https://konto.cohabitat.net/oauth/authorize',
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