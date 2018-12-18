class News < ApplicationRecord
	 mount_uploader :foto, FotoUploader
	 validates_length_of :ringkasan, maximum: 255, allow_blank: false

	 belongs_to :akun
	 has_many :comments
end
