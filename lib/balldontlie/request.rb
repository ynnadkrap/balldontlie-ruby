module Balldontlie
  module Request
    module ClassMethods
      def request(url, opts)
        response = Balldontlie.client.get(url, opts)
        JSON.parse(response.body)
      end
    end

    def self.included(base)
      base.extend(ClassMethods)
    end

    def request(url, opts)
      self.class.request(url, opts)
    end
  end
end
