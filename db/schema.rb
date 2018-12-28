# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_18_085536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "absensis", force: :cascade do |t|
    t.integer "akun_id1"
    t.date "tgl"
    t.string "keterangan"
    t.integer "dojang_id"
    t.integer "akun_id2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "akuns", force: :cascade do |t|
    t.integer "no_reg"
    t.string "nama"
    t.string "tempat_lahir"
    t.date "tgl_lahir"
    t.integer "geup_id"
    t.text "alamat"
    t.integer "dojang_id"
    t.integer "tahun_masuk"
    t.integer "angkatan"
    t.string "pekerjaan"
    t.integer "role_id"
    t.integer "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "akun_id"
    t.integer "id_new"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_kejuaraans", force: :cascade do |t|
    t.integer "kegiatan_id"
    t.integer "jumlah_peserta"
    t.integer "emas"
    t.integer "perak"
    t.integer "perunggu"
    t.integer "jumlah_total_medali"
    t.string "keterangan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_ukts", force: :cascade do |t|
    t.string "periode"
    t.integer "sabuk_putih"
    t.integer "sabuk_kuning_polos"
    t.integer "sabuk_kuning_strip"
    t.integer "sabuk_hijau_polos"
    t.integer "sabuk_hijau_strip"
    t.integer "sabuk_biru_polos"
    t.integer "sabuk_biru_strip"
    t.integer "sabuk_merah_polos"
    t.integer "sabuk_merah_strip"
    t.integer "sabuk_merah_strip_satu"
    t.integer "sabuk_merah_strip_dua"
    t.integer "jumlah"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dojangs", force: :cascade do |t|
    t.string "nama_dojang"
    t.text "alamat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "geups", force: :cascade do |t|
    t.integer "geup"
    t.string "warna_string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kas", force: :cascade do |t|
    t.string "keterangan"
    t.float "debit"
    t.float "kredit"
    t.float "saldo"
    t.integer "akun_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kas_clubs", force: :cascade do |t|
    t.string "keterangan"
    t.float "debit"
    t.float "kredit"
    t.float "saldo"
    t.integer "akun_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kas_smas", force: :cascade do |t|
    t.string "keterangan"
    t.float "debit"
    t.float "kredit"
    t.float "saldo"
    t.integer "akun_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kas_smps", force: :cascade do |t|
    t.string "keterangan"
    t.float "debit"
    t.float "kredit"
    t.float "saldo"
    t.integer "akun_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kategori_pembayarans", force: :cascade do |t|
    t.string "katagori_pembayaran"
    t.float "nominal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kegiatans", force: :cascade do |t|
    t.integer "kegiatan_id"
    t.string "nama_kegiatan"
    t.text "tempat"
    t.date "tgl"
    t.float "biaya"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kejuaraans", force: :cascade do |t|
    t.integer "akun_id"
    t.integer "kegiatan_id"
    t.string "perolehan"
    t.string "kategori_under"
    t.string "jenis_kejuaraan"
    t.string "prestasi_pemula"
    t.string "tingkat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.integer "akun_id"
    t.string "judul"
    t.string "foto"
    t.text "isi"
    t.text "ringkasan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pembayarans", force: :cascade do |t|
    t.integer "akun_id1"
    t.integer "kategori_pembayaran_id"
    t.float "nominal"
    t.integer "cicilan"
    t.boolean "keterangan"
    t.integer "akun_id2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pengurus", force: :cascade do |t|
    t.integer "akun_id"
    t.integer "role_id"
    t.integer "periode_awal"
    t.integer "periode_akhir"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pj_dojangs", force: :cascade do |t|
    t.integer "dojang_id"
    t.integer "akun_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "nama_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.integer "status_id"
    t.string "nama_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surats", force: :cascade do |t|
    t.string "no_surat"
    t.string "perihal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ukts", force: :cascade do |t|
    t.integer "akun_id"
    t.string "tempat"
    t.date "tgl_lahir"
    t.integer "no_reg"
    t.string "foto"
    t.integer "geup"
    t.string "sabuk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "absensis", "akuns", column: "akun_id1"
  add_foreign_key "absensis", "akuns", column: "akun_id2"
  add_foreign_key "akuns", "dojangs"
  add_foreign_key "akuns", "geups"
  add_foreign_key "akuns", "roles"
  add_foreign_key "akuns", "statuses"
  add_foreign_key "comments", "akuns"
  add_foreign_key "data_kejuaraans", "kegiatans"
  add_foreign_key "kas", "akuns"
  add_foreign_key "kas_clubs", "akuns"
  add_foreign_key "kas_smas", "akuns"
  add_foreign_key "kas_smps", "akuns"
  add_foreign_key "kejuaraans", "akuns"
  add_foreign_key "kejuaraans", "kegiatans"
  add_foreign_key "news", "akuns"
  add_foreign_key "pembayarans", "akuns", column: "akun_id1"
  add_foreign_key "pembayarans", "akuns", column: "akun_id2"
  add_foreign_key "pengurus", "akuns"
  add_foreign_key "pengurus", "roles"
  add_foreign_key "ukts", "akuns"
end
