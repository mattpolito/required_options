Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'required_options'
  s.version           = '0.5.0'
  s.date              = '2011-09-26'

  ## Make sure your summary is short. The description may be as long
  ## as you like.
  s.summary     = "Guard your methods against those slacker options that 'forget' to come to class."
  s.description = "RequiredOptions allows you to verbosely guard methods from options you rely on when using an options hash."

  ## List the primary authors. If there are a bunch of authors, it's probably
  ## better to set the email to an email list or something. If you don't have
  ## a custom homepage, consider using your GitHub URL or the like.
  s.authors  = ["Matt Polito"]
  s.email    = 'matt.polito@gmail.com'
  s.homepage = 'http://github.com/mattpolito/required_options'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  ## Specify any RDoc options here. You'll want to add your README and
  ## LICENSE files to the extra_rdoc_files list.
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md LICENSE]

  s.add_development_dependency('rspec')

  ## Leave this section as-is. It will be automatically generated from the
  ## contents of your Git repository via the gemspec task. DO NOT REMOVE
  ## THE MANIFEST COMMENTS, they are used as delimiters by the task.

  # = MANIFEST =
  s.files = %w[
    Gemfile
    Gemfile.lock
    LICENSE
    README.md
    Rakefile
    lib/required_options.rb
    required_options.gemspec
    spec/required_options_spec.rb
  ]
  # = MANIFEST =
  s.test_files = s.files.select { |path| path =~ /^spec\/*._spec\.rb/ }
end
