# frozen_string_literal: true

require 'logger'

class OpenLibraryService
  include HTTParty
  base_uri 'openlibrary.org'
  logger ::Logger.new(STDERR), :debug, :curl

  def search(query, page, fields = 'title,author_name,key')
    response = self.class.get('/search.json', { query: { q: query, page:, fields: }, headers: { 'Accept-Encoding': 'application/json' } })
    JSON.parse response.body if response.code == 200
  end
end 
