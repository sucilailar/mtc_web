# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_file_path = "#{Rails.root}/lib/seeds/dojang.csv"
CSV.foreach(csv_file_path, headers: false) do |row|
	Dojang.create!({
		:nama_dojang => row[0],
		:alamat => row[1]
	})
	puts "Row Dojang Added!"
end

csv_file_path_role = "#{Rails.root}/lib/seeds/role.csv"
CSV.foreach(csv_file_path_role, headers: false) do |row|
	Role.create!({
		:nama_role => row[0]
	})
	puts "Row Role Added!"
end

csv_file_path_sabuk = "#{Rails.root}/lib/seeds/sabuk.csv"
CSV.foreach(csv_file_path_sabuk, headers: false) do |row|
	Geup.create!({
		:geup => row[0],
		:warna_string => row[1]
	})
	puts "Row Geup Added!"
end

csv_file_path_status = "#{Rails.root}/lib/seeds/status.csv"
CSV.foreach(csv_file_path, headers: false) do |row|
	Status.create!({
		:nama_status => row[0],
	})
	puts "Row Status Added!"
end


