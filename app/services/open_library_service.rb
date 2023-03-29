# frozen_string_literal: true

class OpenLibraryService
  include HTTParty
  base_uri 'openlibrary.org'

  def search(query, page, fields = 'title,author_name,key')
    response = self.class.get('/search.json', { query: { q: query, page:, fields: }, headers: { 'Accept-Encoding': 'application/json' } })
    JSON.parse response.body if response.code == 200
  end
end 
