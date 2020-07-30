class Nurse < ApplicationRecord
    has_many :appointments, -> {order(created_at: :desc)}
    has_many :doctors, through: :appointments
    has_many :visitors, through: :appointments
    validates_uniqueness_of :username

    def self.nurse_appts
        total = 0
        nurse = 0
        Nurse.all.each do |x|
            if x.appointments.count <= total
                (total = x.appointments.count)
                nurse = x.id
            else
                total = x.appointments.count
                nurse = x.id
            end
        end
        nurse
    end
    
end
