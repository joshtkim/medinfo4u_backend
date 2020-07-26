class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :visitor_symptom, :observation, :note, :public, :symptom, :nurse, :doctor, :visitor
end
