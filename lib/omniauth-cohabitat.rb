require "omniauth-cohabitat/version"
require "omniauth"

module OmniAuth
  module Strategies
    autoload :Cohabitat, 'omniauth/strategies/cohabitat'
  end
end

OmniAuth.config.add_camelization 'cohabitat', 'Cohabitat'