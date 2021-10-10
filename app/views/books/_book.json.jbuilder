json.extract! book, :id, :Name, :Section_ID, :created_at, :updated_at
json.url book_url(book, format: :json)
