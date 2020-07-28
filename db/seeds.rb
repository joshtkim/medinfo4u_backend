Doctor.destroy_all
Nurse.destroy_all
Symptom.destroy_all
Visitor.destroy_all
Appointment.destroy_all

puts "reset seed data"

language = ["korean", "english", "spanish", "chinese", "italian"]

puts "create Doctor"
testDoctor = Doctor.create(username: "doctor", name: Faker::Name.name, dob: "05/22/1990" , age: 30 , phone: Faker::PhoneNumber.cell_phone, ext: Faker::PhoneNumber.extension, email: Faker::Name.first_name + "@email.com", language: language.sample, specialty: "Surgeon")
testDoctor2 = Doctor.create(username: "doctor1", name: Faker::Name.name, dob: "05/22/1990" , age: 30 , phone: Faker::PhoneNumber.cell_phone, ext: Faker::PhoneNumber.extension, email: Faker::Name.first_name + "@email.com", language: language.sample, specialty: "Surgeon")
testDoctor3 = Doctor.create(username: "doctor2", name: Faker::Name.name, dob: "05/22/1990" , age: 30 , phone: Faker::PhoneNumber.cell_phone, ext: Faker::PhoneNumber.extension, email: Faker::Name.first_name + "@email.com", language: language.sample, specialty: "Surgeon")

puts 'created'

puts "create Nurse"
testNurse = Nurse.create(username: "nurse", name: Faker::Name.name, dob: "10/8/1885", age: 35, phone: Faker::PhoneNumber.cell_phone, ext: Faker::PhoneNumber.extension, email: Faker::Name.first_name + "@email.com", language: language.sample, specialty: "Cardiac Nurse")
puts 'created'

puts "create Visitor"
testVisitor = Visitor.create(username: "visitor", name: Faker::Name.name, dob: "10/8/1865", age: 55, phone: Faker::PhoneNumber.cell_phone, email: Faker::Name.first_name + "@email.com", language: language.sample, healthcare: "Best HealthCare")
puts 'created'

puts "create Appointment"
Appointment.create(doctor_id: Doctor.all.sample.id, nurse_id: Nurse.all.sample.id, visitor_id: Visitor.all.sample.id, date: "07/04/2020", time: "10:00am", visitor_symptom: "sprained ankle and swelling", observation: "ankle has a minor sprain with minor swelling", note: "patient will have to use RICE method and stay off ankle for a couple of days", public: "RICE and stay off ankle for a couple of days")
Appointment.create(doctor_id: Doctor.all.sample.id, nurse_id: Nurse.all.sample.id, visitor_id: Visitor.all.sample.id, date: "01/25/2020", time: "8:00pm", visitor_symptom: "stomach", observation: "patient likely has food poisoning", note: "patient has food poisoning", public: "medicine and rest")
Appointment.create(doctor_id: Doctor.all.sample.id, nurse_id: Nurse.all.sample.id, visitor_id: Visitor.all.sample.id, date: "07/04/2020", time: "9:30am", visitor_symptom: "sprained ankle and swelling", observation: "ankle has a minor sprain with minor swelling", note: "patient will have to use RICE method and stay off ankle for a couple of days", public: "RICE and stay off ankle for a couple of days")
Appointment.create(doctor_id: Doctor.all.sample.id, nurse_id: Nurse.all.sample.id, visitor_id: Visitor.all.sample.id, date: "01/25/2020", time: "8:00am", visitor_symptom: "stomach", observation: "patient likely has food poisoning", note: "patient has food poisoning", public: "medicine and rest")
Appointment.create(doctor_id: Doctor.all.sample.id, nurse_id: Nurse.all.sample.id, visitor_id: Visitor.all.sample.id, date: "07/04/2020", time: "10:00pm", visitor_symptom: "sprained ankle and swelling", observation: "ankle has a minor sprain with minor swelling", note: "patient will have to use RICE method and stay off ankle for a couple of days", public: "RICE and stay off ankle for a couple of days")
Appointment.create(doctor_id: Doctor.all.sample.id, nurse_id: Nurse.all.sample.id, visitor_id: Visitor.all.sample.id, date: "01/25/2020", time: "8:00pm", visitor_symptom: "stomach", observation: "patient likely has food poisoning", note: "patient has food poisoning", public: "medicine and rest")
Appointment.create(doctor_id: Doctor.all.sample.id, nurse_id: Nurse.all.sample.id, visitor_id: Visitor.all.sample.id, date: "01/25/2020", time: "8:00pm", visitor_symptom: "stomach", observation: "patient likely has food poisoning", note: "patient has food poisoning", public: "medicine and rest")
puts 'created'

puts "create Symptom"
testSymptom = Symptom.create(appointment_id: Appointment.all.sample.id, location: "back left heel", visitor_symptom: "sprained ankle and swelling", observation: "ankle has a minor sprain with minor swelling", note: "patient will have to use RICE method and stay off ankle for a couple of days", public: "RICE and stay off ankle for a couple of days")
s1 = Symptom.create(appointment_id: Appointment.all.sample.id, location: "front abdomen", visitor_symptom: "stomach", observation: "patient likely has food poisoning", note: "patient has food poisoning", public: "medicine and rest")
puts 'created'