class Visitor < ApplicationRecord
    has_many :appointments, -> {order(created_at: :desc)}
    has_many :nurses, through: :appointments
    has_many :doctors, through: :appointments
    validates_uniqueness_of :username
    
end
