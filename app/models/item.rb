class Item < ApplicationRecord
	has_many :appearances, dependent: :destroy
	has_many :lists, through: :appearances
	validates :name, :price, :quantity, presence:true
end
