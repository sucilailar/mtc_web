class Pembayaran < ApplicationRecord
	belongs_to :akun_id1, class_name: 'Akun'
	belongs_to :akun_id2, class_name: 'Akun'
end
