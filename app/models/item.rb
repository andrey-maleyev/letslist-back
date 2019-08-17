class Item < ApplicationRecord
    has_many :events_items
    has_many :events, through: :events_items
end