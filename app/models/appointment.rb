class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :nurse
  belongs_to :visitor
  has_one :symptom
end
