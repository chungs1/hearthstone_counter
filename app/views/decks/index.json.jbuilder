json.array!(@decks) do |deck|
  json.extract! deck, :id, :name, :link, :description
  json.url deck_url(deck, format: :json)
end
