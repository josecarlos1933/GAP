json.extract! book, :id, :title, :pages, :cover, :published_at, :created_at, :updated_at
json.url book_url(book, format: :json)
