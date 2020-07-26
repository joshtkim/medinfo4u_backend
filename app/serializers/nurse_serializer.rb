class NurseSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :dob, :age, :phone, :ext, :email, :language, :specialty
  has_many :appointments
end
