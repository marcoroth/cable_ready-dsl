# frozen_string_literal: true

require_relative 'lib/cable_ready/dsl/version'

Gem::Specification.new do |spec|
  spec.name          = 'cable_ready-dsl'
  spec.version       = CableReady::Dsl::VERSION
  spec.authors       = ['Marco Roth']
  spec.email         = ['marco.roth@hey.com']

  spec.summary       = 'Opinionated CableReady DSL'
  spec.description   = 'An opinionated DSL for CableReady'
  spec.homepage      = 'https://github.com/marcoroth/cable_ready-dsl'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/marcoroth/cable_ready-dsl'
  spec.metadata['changelog_uri'] = 'https://github.com/marcoroth/cable_ready-dsl/blob/master/CHANGELOG.md'
  spec.metadata['github_repo'] = 'https://github.com/marcoroth/netatmo-ruby'

  spec.files = Dir['lib/**/*.rb', 'bin/*', '[A-Z]*']
  spec.test_files = Dir['test/**/*.rb']

  spec.require_paths = ['lib']
  spec.add_dependency 'cable_ready', '~> 4.5'

  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rubocop', '~> 1.12'
end
