class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :visitor_symptom, :observation, :note, :public, :created_at, :symptom, :nurse, :doctor, :visitor
end
