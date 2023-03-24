# frozen_string_literal: true

class OpenLibraryService
  include HTTParty
  base_uri 'openlibrary.org'

  def search(query)
    response = self.class.get('/search.json', { query: { q: query, fields: 'title,author_name,key' }, headers: { 'Accept-Encoding': 'application/json' } })
    result = JSON.parse response.body
    result['docs']
  end
end
