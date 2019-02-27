module Balldontlie
  class BaseObject
    include Balldontlie::Request

    def initialize(values)
      @values = values

      values.each do |k, v|
        metaclass.instance_eval do
          define_method(k) { v }
        end
      end
    end

    def metaclass
      class << self; self; end
    end

    def to_hash
      @values
    end
  end
end
