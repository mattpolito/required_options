require "lib/required_options/version"

Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'
  s.platform          = Gem::Platform::RUBY

  s.name              = 'required_options'
  s.version           = RequiredOptions::VERSION
  s.date              = '2011-09-26'

  s.summary     = "Guard your methods against those slacker options that 'forget' to come to class."
  s.description = "RequiredOptions allows you to verbosely guard methods from options you rely on when using an options hash."
  s.authors  = ["Matt Polito"]
  s.email    = 'matt.polito@gmail.com'
  s.homepage = 'http://github.com/mattpolito/required_options'
  s.require_paths = %w[lib]

  s.add_development_dependency('rspec', "~> 2.6")
  s.add_development_dependency('rake')

  # = MANIFEST =
  s.files = %w[
    Gemfile
    Gemfile.lock
    LICENSE
    README.md
    Rakefile
    lib/required_options.rb
    lib/required_options/version.rb
    required_options.gemspec
    spec/required_options_spec.rb
  ]
  # = MANIFEST =
  s.test_files = s.files.select { |path| path =~ /^spec\/*._spec\.rb/ }
end
