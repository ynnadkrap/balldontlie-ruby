module Balldontlie
  module Operations
    module List
      def list(opts = {})
        data = request(resource_url, opts)
        Balldontlie::List.new(resource_url, data)
      end
    end
  end
end
