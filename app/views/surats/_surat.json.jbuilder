json.extract! surat, :id, :no_surat, :perihal, :created_at, :updated_at
json.url surat_url(surat, format: :json)
