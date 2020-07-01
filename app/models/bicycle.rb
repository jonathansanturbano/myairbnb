class Bicycle < ApplicationRecord
  has_many :bookings
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :model, :price_per_day, :start_date, :end_date, presence: true
end
