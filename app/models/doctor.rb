class Doctor < ApplicationRecord
    has_many :appointments, -> {order(created_at: :desc)}
    has_many :nurses, through: :appointments
    has_many :visitors, through: :appointments
    validates_uniqueness_of :username

    def self.doc_appts
        total = 0
        doctor = 0
        Doctor.all.each do |x|
            if x.appointments.count <= total
                (total = x.appointments.count)
                doctor = x.id
            else
                total = x.appointments.count
                doctor = x.id
            end
        end
        doctor
    end

end
