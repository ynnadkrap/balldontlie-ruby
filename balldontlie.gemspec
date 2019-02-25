Gem::Specification.new do |s|
  s.name        = 'balldontlie'
  s.version     = '0.1.0'
  s.date        = '2019-02-25'
  s.summary     = 'API client for balldontlie'
  s.description = 'API client for balldontlie'
  s.authors     = ['Danny Park']
  s.email       = 'dannypark92@gmail.com'
  s.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.homepage = 'http://rubygems.org/gems/hola'
  s.license = 'MIT'

  s.add_runtime_dependency 'faraday'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'rspec'
end
