class List < ApplicationRecord
	validates :name, :store, :date, presence:true
end
