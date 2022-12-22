require File.expand_path('lib/fun_translations/version', __dir__)

Gem::Specification.new do |spec|
  spec.name                  = 'fun_translations'
  spec.version               = FunTranslations::VERSION
  spec.authors               = ['Anton Anfilofev']
  spec.email                 = ['aurfree@gmail.com']
  spec.summary               = 'Test translation for lerning'
  spec.description           = ''
  spec.homepage              = 'https://github.com/Kermit23Jaba/RubyTrein/IK/lesson_11/fun_translations/'#не забудь поменять
  spec.license               = 'MIT'
  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.7.0'

  spec.files = Dir['lib/**/*.rb',
                   'fun_translations.gemspec',
                   'Gemfile']
  #spec.extra_rdoc_files = ['README.md']
  spec.require_paths    = ['lib']

  spec.add_dependency 'faraday', '~> 2.6'
  spec.add_dependency 'zeitwerk', '~> 2.4'

  spec.metadata = {
    'rubygems_mfa_required' => 'true'
  }
end