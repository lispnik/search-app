class SearchController < ApplicationController

  def index
    @query = params['query']
    @page = params['page'] || 0
    @next_page = @page.to_i + 1
    @results = []
    if @query.present?
      open_library = OpenLibraryService.new
      search_response = open_library.search(@query, @page)
      if search_response
        @results = search_response['docs']
        @start = search_response['start']
        @total = search_response['numFound']
      else
        @results = nil
      end
    end
  end
end
