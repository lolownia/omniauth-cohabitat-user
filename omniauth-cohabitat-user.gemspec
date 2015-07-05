$:.push File.expand_path("../lib", __FILE__)

require "omniauth-cohabitat-user/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-cohabitat-user"
  s.version     = OmniAuth::CohabitatUser::VERSION
  s.authors     = ["Marcin Lewandowski"]
  s.email       = ["marcin@saepia.net"]
  s.homepage    = "http://github.com/Cohabitat/omniauth-cohabitat-user"
  s.summary     = "Official OmniAuth strategy for users of Cohabitat apps"
  s.description = "Official OmniAuth strategy for users of Cohabitat apps"

  s.add_dependency 'omniauth', '~> 1.0'
  s.add_dependency 'omniauth-oauth2', '1.3.0'

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 1.9.3'
end
