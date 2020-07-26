class SymptomSerializer < ActiveModel::Serializer
  attributes :id, :location, :visitor_symptom, :observation, :note, :public
  belongs_to :appointment
end
