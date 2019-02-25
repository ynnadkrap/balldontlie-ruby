module Balldontlie
  module Operations
    module Retrieve
      def retrieve(id, opts = {})
        request("#{resource_url}/#{id}", opts)
      end
    end
  end
end
