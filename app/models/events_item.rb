class EventsItem < ApplicationRecord
    belongs_to :event
    belongs_to :item
    has_and_belongs_to_many :participants
end