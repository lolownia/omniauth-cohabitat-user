require "omniauth-cohabitat-user/version"
require "omniauth"

module OmniAuth
  module Strategies
    autoload :CohabitatUser, 'omniauth/strategies/cohabitat-user'
  end
end

OmniAuth.config.add_camelization 'cohabitat_user', 'CohabitatUser'
