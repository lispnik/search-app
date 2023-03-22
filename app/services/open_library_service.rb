# frozen_string_literal: true

class OpenLibraryService
  include HTTParty
  base_uri 'openlibrary.org'

  def search(query)
    results = self.class.get('/search.json', {query: {q: query, fields: 'title,author_name,key'}})
    results
  end
end
