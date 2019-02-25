require 'faraday'
require 'json'

require 'balldontlie/request'
require 'balldontlie/base_resource'
require 'balldontlie/operations/list'
require 'balldontlie/operations/retrieve'
require 'balldontlie/team'

module Balldontlie
  class << self
    def client
      @client ||= Faraday.new(url: 'https://www.balldontlie.io/api/v1')
    end
  end
end
