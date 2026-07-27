class Event < ApplicationRecord
  belongs_to :user
  scope :upcoming, -> { where("event_date >= ?", Time.current).order(event_date: :asc) }
  
  scope :past, -> { where("event_date < ?", Time.current).order(event_date: :desc) }
end
