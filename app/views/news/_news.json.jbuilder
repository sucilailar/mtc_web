json.extract! news, :id, :id_creator, :judul, :foto, :isi, :ringkasan, :created_at, :updated_at
json.url news_url(news, format: :json)
