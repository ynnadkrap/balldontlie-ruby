module Balldontlie
  module Request
    def request(url, opts)
      res = Balldontlie.client.get(url, opts)
      JSON.parse(res.body)
    end
  end
end
