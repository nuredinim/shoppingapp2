class Appearance < ApplicationRecord
  belongs_to :list
  belongs_to :item
  validates :list_id, :item_id, presence: true
end
