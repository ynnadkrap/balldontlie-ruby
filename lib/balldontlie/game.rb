module Balldontlie
  class Game < BaseObject
    extend Balldontlie::Operations::List
    extend Balldontlie::Operations::Retrieve

    def self.resource_url
      'games'
    end
  end
end
