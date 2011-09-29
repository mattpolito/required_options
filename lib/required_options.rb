module RequiredOptions
  def required_options(options, *required_options)
    included_opts, missing_opts = required_options.partition do |o|
      options.include?(o)
    end

    raise MissingOptions, exception_text_for(missing_opts) if !missing_opts.empty?
  end

  private
  def exception_text_for(missing_options)
    missing_options.map(&:inspect).join(", ").gsub("\"", "")
  end
end

class MissingOptions < ArgumentError; end

Object.send(:include, RequiredOptions)
