require File.join(File.dirname(__FILE__), 'lib/geckoboard/version')

Gem::Specification.new do |s|
  s.name        = 'geckoboard-rails'
  s.version     = Geckoboard::VERSION
  s.summary     = "API wrapper for geckoboard-rails.com dashboard"
  s.description = "Ruby API wrapper for geckoboard-rails realtime dashboard using HTTParty"
  s.authors     = ["Ary Rabelo"]
  s.email       = 'aryrabelo@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'http://github.com/aryrabelo/geckoboard-rails'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.1.2'

  s.add_runtime_dependency 'addressable', '~> 2.3', '>= 2.3.3'
  s.add_runtime_dependency 'httparty', '~> 0.10', '>= 0.10.2'
  s.add_runtime_dependency 'json', '~> 1.7', '>= 1.7.7'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'vcr', '2.5.0'
  s.add_development_dependency 'minitest', '~> 4.6.2'
  s.add_development_dependency 'webmock', '1.8'
  s.add_development_dependency 'mocha', '~> 1.1.0', '>= 1.1.0'
  s.add_development_dependency 'pry', '~> 0.9', '>= 0.9.2'

  s.post_install_message = <<-DESC
  Quack! (in real-time)"

  ===

  Don't forget to set your ENV variable for GECKOBOARD_API_KEY

    export GECKOBOARD_API_KEY='YOURKEY'

  or set it in your script

    Geckoboard.api_key = 'YOURKEY'
DESC

end
