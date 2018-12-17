json.extract! pembayaran, :id, :akun_id, :kategori_kegiatan_id, :nominal, :cicilan, :keterangan, :id_bendahara, :created_at, :updated_at
json.url pembayaran_url(pembayaran, format: :json)
