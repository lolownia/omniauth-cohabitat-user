$:.push File.expand_path("../lib", __FILE__)

require "omniauth-cohabitat/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-cohabitat"
  s.version     = OmniAuth::Cohabitat::VERSION
  s.authors     = ["Marcin Lewandowski"]
  s.email       = ["marcin@saepia.net"]
  s.homepage    = "http://github.com/Cohabitat/omniauth-cohabitat"
  s.summary     = "Official OmniAuth strategy for Cohabitat apps"
  s.description = "Official OmniAuth strategy for Cohabitat apps"

  s.add_dependency 'omniauth', '~> 1.0'
  s.add_dependency 'omniauth-oauth2', '~> 1.1'

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 1.9.3'
end