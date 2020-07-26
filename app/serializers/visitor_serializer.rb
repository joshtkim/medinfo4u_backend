class VisitorSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :dob, :age, :phone, :email, :language, :healthcare
  has_many :appointments
end
