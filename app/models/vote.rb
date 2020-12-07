class Vote < ApplicationRecord

# code to import csv and xls files
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Vote.create! row.to_hash
		end
	end


end
