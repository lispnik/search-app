class SearchController < ApplicationController
  def index
    @results = []
    @query = params['query']
  end
end
