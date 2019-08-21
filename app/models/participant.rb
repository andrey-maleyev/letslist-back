class Participant < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_and_belongs_to_many :events_items
end
