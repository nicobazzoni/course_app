# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all
Enrollment.destroy_all



 c1 =Course.create(name: "Epistimology")

 c2 = Course.create(name: "Ontology")
 c3 =Course.create(name: "Metaphysics")
 c4 =Course.create(name: "Logic")
  c5 = Course.create(name: "Ethics")

 
 
 
 Enrollment.create(user_id: 1, course_id: c1.id)
 Enrollment.create(user_id: 2, course_id: c1.id)
 Enrollment.create(user_id: 3, course_id: c2.id)
 Enrollment.create(user_id: 4, course_id: c3.id)
 Enrollment.create(user_id: 1, course_id: c4.id)
 Enrollment.create(user_id: 2, course_id: c5.id)


puts 'seeded'