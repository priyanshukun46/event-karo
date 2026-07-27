class Event < ApplicationRecord
  scope :upcoming, -> { where("event_date >= ?", Time.current).order(event_date: :asc) }
  scope :past, -> { where("event_date < ?", Time.current).order(event_date: :desc) }
  
  has_many :host,
    class_name :'User'
  has_many :attendances,
    dependent: :destroy
  has_many :attendee,
    through: :attendances,
    source: :user
end
