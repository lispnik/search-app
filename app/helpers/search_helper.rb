module SearchHelper

  def authors_list(authors)
    if authors
      authors.join(', ')
    else
      '(unknown)'
    end
  end

  def link_to_work(key)
    link_to key, "https://openlibrary.org#{key}"
  end
end
