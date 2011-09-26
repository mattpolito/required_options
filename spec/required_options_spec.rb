require 'rspec'
require 'required_options'

describe RequiredOptions do
  class Dummy
    def self.major_method(opts = {})
      required_options opts, :speed
    end

    def minor_method(options = {})
      required_options options, :dyno, "rpm"
    end
  end

  context "when required options are passed" do
    context "and a class method" do
      it "will not raise an exception" do
        lambda do
          Dummy.major_method(:speed => "")
        end.should_not raise_error(MissingOptions)
      end
    end

    context "and an instance method" do
      it "will not raise an exception" do
        lambda do
          Dummy.new.minor_method(
            :dyno => "",
            "rpm" => ""
          )
        end.should_not raise_error(MissingOptions)
      end
    end
  end

  context "when required options are missing" do
    context "and a class method" do
      it "will raise a MissingOptions exception" do
        lambda do
          Dummy.major_method
        end.should raise_error(MissingOptions, ":speed")
      end
    end

    context "and an instance method" do
      it "will raise a MissingOptions exception" do
        lambda do
          Dummy.new.minor_method
        end.should raise_error(MissingOptions, ":dyno, rpm")
      end
    end
  end
end
