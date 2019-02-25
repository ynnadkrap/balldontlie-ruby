module Balldontlie
  class Game < BaseResource
    extend Balldontlie::Operations::List
    extend Balldontlie::Operations::Retrieve

    def self.resource_url
      'games'
    end
  end
end
