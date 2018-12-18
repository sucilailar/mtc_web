class Ukt < ApplicationRecord
	 mount_uploader :foto, UktUploader
	 belongs_to :akun
end
