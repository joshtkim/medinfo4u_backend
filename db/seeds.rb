Doctor.destroy_all
Nurse.destroy_all
Visitor.destroy_all
Appointment.destroy_all
Symptom.destroy_all

puts "reset seed data"

language = ["korean", "english", "spanish", "chinese", "italian"]

puts "create Doctor"
d1 = Doctor.create(username: "doctor", name: "Steve Doran", dob: "05/22/1990" , age: 30 , phone: Faker::PhoneNumber.cell_phone, ext: Faker::PhoneNumber.extension, email: "stevendoran@email.com", language: language.sample, specialty: "Surgeon")
d2 = Doctor.create(username: "doctor1", name: "Eric Kim", dob: "05/22/1983" , age: 37 , phone: Faker::PhoneNumber.cell_phone, ext: Faker::PhoneNumber.extension, email: "erickim@email.com", language: language.sample, specialty: "Surgeon")
d3 = Doctor.create(username: "doctor2", name: "Caryn McCarthy", dob: "05/22/1970" , age: 50 , phone: Faker::PhoneNumber.cell_phone, ext: Faker::PhoneNumber.extension, email: "carynmccarthy@email.com", language: language.sample, specialty: "Surgeon")

puts 'created'

puts "create Nurse"
n1 = Nurse.create(username: "nurse", name: "Greg Dwyer", dob: "10/8/1985", age: 35, phone: Faker::PhoneNumber.cell_phone, ext: Faker::PhoneNumber.extension, email: "gregdwyer@email.com", language: language.sample, specialty: "Cardiac")
n2 = Nurse.create(username: "nurse1", name: "Tashawn", dob: "10/8/1995", age: 25, phone: Faker::PhoneNumber.cell_phone, ext: Faker::PhoneNumber.extension, email: "tashawn@email.com", language: language.sample, specialty: "OR")
n3 = Nurse.create(username: "nurse2", name: "Eric Kim", dob: "10/8/1975", age: 45, phone: Faker::PhoneNumber.cell_phone, ext: Faker::PhoneNumber.extension, email: "erickim@email.com", language: language.sample, specialty: "ER")
puts 'created'

puts "create Visitor"
v1 = Visitor.create(username: "joshkim", name: "Josh Kim", dob: "05/05/1995", age: 25, phone: Faker::PhoneNumber.cell_phone, email: "joshkim@email.com", language: "english", healthcare: "Best HealthCare")
v2 = Visitor.create(username: "visitor1", name: "Jallen Messersmith", dob: "10/8/1992", age: 27, phone: Faker::PhoneNumber.cell_phone, email: "jallenmessersmith@email.com", language: language.sample, healthcare: "Best HealthCare")
v3 = Visitor.create(username: "visitor2", name: "Meghann Walsh", dob: "10/8/2001", age: 19, phone: Faker::PhoneNumber.cell_phone, email: "meghannwalsh@email.com", language: language.sample, healthcare: "Best HealthCare")
puts 'created'

puts "create Appointment"
a2 = Appointment.create(doctor_id: d1.id, nurse_id: n1.id, visitor_id: v2.id, date: "10/09/2019", time: "20:00", visitor_symptom: "shoulder pain", observation: "", note: "", public: "")
a3 = Appointment.create(doctor_id: d1.id, nurse_id: n1.id, visitor_id: v1.id, date: "05/14/2020", time: "09:30", visitor_symptom: "stomach", observation: "patient likely has food poisoning", note: "patient has food poisoning", public: "medicine and rest")
a1 = Appointment.create(doctor_id: d2.id, nurse_id: n2.id, visitor_id: v1.id, date: "07/04/2020", time: "10:00", visitor_symptom: "landed awkwardly and experienced a very sharp pain in my knee and it started to swell", observation: "knee has very noticeable swelling. Patient will undergo XRay and MRI", note: "", public: "")
a4 = Appointment.create(doctor_id: d2.id, nurse_id: n2.id, visitor_id: v2.id, date: "01/19/2020", time: "08:00", visitor_symptom: "severely pulled", observation: "", note: "", public: "")
a5 = Appointment.create(doctor_id: d3.id, nurse_id: n3.id, visitor_id: v3.id, date: "03/27/2020", time: "22:00", visitor_symptom: "long hours of coding", observation: "", note: "", public: "")
a6 = Appointment.create(doctor_id: d3.id, nurse_id: n3.id, visitor_id: v3.id, date: "06/18/2020", time: "18:45", visitor_symptom: "pinched nerve", observation: "", note: "", public: "")
a7 = Appointment.create(doctor_id: d1.id, nurse_id: n1.id, visitor_id: v3.id, date: "07/11/2020", time: "19:30", visitor_symptom: "banged my shin while playing soccer", observation: "", note: "", public: "")
puts 'created'

puts "create Symptom"
s1 = Symptom.create(appointment_id: a1.id, location: "front left knee", visitor_symptom: "landed awkwardly and experienced a very sharp pain in my knee and it started to swell", observation: "knee has very noticeable swelling. Patient will undergo XRay and MRI", note: "", public: "")
s2 = Symptom.create(appointment_id: a2.id, location: "right shoulder", visitor_symptom: "shoulder pain", observation: "", note: "", public: "")
s3 = Symptom.create(appointment_id: a3.id, location: "front abdomen", visitor_symptom: "stomach", observation: "patient likely has food poisoning", note: "patient has food poisoning", public: "medicine and rest")
s4 = Symptom.create(appointment_id: a4.id, location: "left hamstring", visitor_symptom: "severely pulled", observation: "", note: "", public: "")
s5 = Symptom.create(appointment_id: a5.id, location: "left wrist", visitor_symptom: "long hours of coding", observation: "", note: "", public: "")
s6 = Symptom.create(appointment_id: a6.id, location: "neck", visitor_symptom: "pinched nerve", observation: "", note: "", public: "")
s7 = Symptom.create(appointment_id: a7.id, location: "right shin", visitor_symptom: "banged my shin while playing soccer", observation: "", note: "", public: "")
puts 'created'