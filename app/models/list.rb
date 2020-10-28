class List < ApplicationRecord
	has_many :appearances, dependent: :destroy
	has_many :items, through: :appearances
	validates :name, :store, :date, presence:true
end
