module Balldontlie
  class List < BaseObject
    include Balldontlie::Operations::List

    attr_reader :resource_url, :data

    def initialize(resource_url, data)
      @resource_url = resource_url
      @data = data
    end

    def next_page
      page = @data.dig('meta', 'next_page')
      list({ page: page }) if page
    end

    def previous_page
      page = @data.dig('meta', 'previous_page')
      list({ page: page }) if page
    end
  end
end
