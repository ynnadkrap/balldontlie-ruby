module Balldontlie
  class Team < BaseObject
    extend Balldontlie::Operations::List
    extend Balldontlie::Operations::Retrieve

   def self.resource_url
      'teams'
    end
  end
end
