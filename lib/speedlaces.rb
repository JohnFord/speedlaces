require "speedlaces/version"
require "speedlaces/speedlaces"

module Speedlaces
  def self.included(base)
    base.extend Speedlaces::ClassMethods
    base.send :include, Speedlaces::InstanceMethods
  end
end
