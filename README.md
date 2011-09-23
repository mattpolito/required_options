RequiredOptions
=======

# DESCRIPTION

Guard your methods against those slacker options that 'forget' to come to class.

# INSTALLATION

Add gem to your project.

If using bundler

    gem 'required_options'

# USAGE

Just declare which components of your options hash that you can't live without

    def some_method_with_options(arg, opts = {})
      required_options :track_name, :band_name

      # do some really smart work here
    end
