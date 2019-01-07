class Absensi < ApplicationRecord
	belongs_to :akun_id, class_name: 'Akun', :foreign_key =>  'akun_id1'
	belongs_to :akun, class_name: 'Akun', :foreign_key =>  'akun_id2'
	belongs_to :dojang
end
