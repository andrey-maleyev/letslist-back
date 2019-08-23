class Item < ApplicationRecord
    has_many :events_items, dependent: :destroy
    has_many :events, through: :events_items
end