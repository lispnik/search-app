class SearchController < ApplicationController

  def index
    @results = []
    @query = params['query']
    if @query.present?
      open_library = OpenLibraryService.new
      @results = open_library.search(@query)
    end
  end
end
