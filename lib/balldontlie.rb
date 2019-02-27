require 'faraday'
require 'json'

require_relative 'balldontlie/request'
require_relative 'balldontlie/base_object'
require_relative 'balldontlie/operations/list'
require_relative 'balldontlie/operations/retrieve'
require_relative 'balldontlie/team'
require_relative 'balldontlie/stat'
require_relative 'balldontlie/list'

module Balldontlie
  class << self
    def client
      @client ||= Faraday.new(url: 'https://www.balldontlie.io/api/v1')
    end
  end
end
