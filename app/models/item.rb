class Item < ApplicationRecord
	has_many :appearances
	has_many :lists, through: :appearances
	validates :name, :price, :quantity, presence:true
end
