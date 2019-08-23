class Event < ApplicationRecord
    has_many :participants, dependent: :destroy
    has_many :events_items, dependent: :destroy
    has_many :items, through: :events_items
end
