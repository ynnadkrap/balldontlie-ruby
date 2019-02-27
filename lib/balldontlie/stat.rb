module Balldontlie
  class Stat < BaseObject
    extend Balldontlie::Operations::List

   def self.resource_url
      'stats'
    end
  end
end
