class Akun < ApplicationRecord

	 belongs_to :geup
	 belongs_to :dojang
	 belongs_to :role
	 belongs_to :status
	 has_many :kejuaraans
	 has_many :news
	 has_many :comments
	 has_many :pengurus
	 has_many :kas
	 has_many :uts
	 has_many :pembayarans
	 has_many :kas_clubs
	 has_many :kas_smas
	 has_many :kas_smps
	 has_many :absensis
end
