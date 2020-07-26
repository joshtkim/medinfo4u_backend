class Visitor < ApplicationRecord
    has_many :appointments
    has_many :nurses, through: :appointments
    has_many :doctors, through: :appointments
    validates_uniqueness_of :username
    
end
