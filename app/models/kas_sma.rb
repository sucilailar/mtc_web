class KasSma < ApplicationRecord
	belongs_to :akun

	# if !@kas_sma.saldo == nil
	# 	validates :kredit,  less_than_or_equal_to: :saldo 
	# end
end
