class Event < ApplicationRecord
    has_many :participants
    has_many :events_items
    has_many :items, through: :events_items
end
