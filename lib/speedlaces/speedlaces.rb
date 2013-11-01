module Speedlaces
  module ClassMethods
    def speedlaces(options = {}, &block)
      throw 'Not Implemented'
    end
  end

  module InstanceMethods
    def initialize(args = {})
      args.each do |name, value|
        if respond_to? "#{name}="
          send("#{name}=", value)
        end
      end
    end
  end
end
