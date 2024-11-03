# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |s|
  s.name        = 'ding_sdk'
  s.version     = '0.8.25'
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['Apache-2.0']
  s.summary     = ''
  s.homepage    = 'https://github.com/ding-live/ding-ruby.git'
  s.description = 'Ding Ruby SDK'
  s.authors     = ['Ding']
  s.metadata    = {
    'homepage_uri' => 'https://github.com/ding-live/ding-ruby.git',
    'documentation_uri' => 'https://github.com/ding-live/ding-ruby.git',
    'source_code_uri' => 'https://github.com/ding-live/ding-ruby.git'
  }

  s.files         = Dir['{lib,test}/**/*']
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 3.0'

  s.add_dependency('faraday')
  s.add_dependency('faraday-multipart')
  s.add_dependency('rack')
  s.add_dependency('rake')
  s.add_dependency('sorbet')


  s.add_development_dependency('minitest')
  s.add_development_dependency('rubocop')
  s.add_development_dependency('sorbet-runtime')
  s.add_development_dependency('tapioca')
end
