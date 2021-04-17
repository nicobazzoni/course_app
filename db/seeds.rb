# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all
Enrollment.destroy_all



 c1 = Course.create(name: "Epistemology", description: " an introduction to the theory of knowledge. topics include skepticism about the external world, the
 analysis of knowledge, sensitivity and safety, the regress of reasons, foundationalism vs. infinitism vs.
 coherentism, and internalism vs. externalism.")

 c2 = Course.create(name: "Ancient Philosophy", description: " Designed to introduce the student to the Greek contribution to the philosophical and scientific ideas of the Western world through study of works of Plato, Aristotle, epicurus, and lucretius in english translation. topics in moral and political philosophy, as well as epistemology and metaphysics, will be included. attention will be focused on the quality of the arguments presented by the philosophers.")
 c3 =Course.create(name: "Metaphysics", description: "An introduction to some of the central questions of pure philosophy through their treatment by traditional and contemporary writers: questions concerning mind and matter; causation and free will; space and time; meaning, truth, and reality; knowledge, perception, belief, and thought.")
 c4 =Course.create(name: "Logic", description: "A study of reasoning and its role in science and everyday life, with special attention to the development of a system of symbolic logic, to probabilistic reasoning, and to problems in decision theory.")
  c5 = Course.create(name: "Morals and Ethics", description: "An introductory survey of ethical thought, covering such topics as the demands that morality makes, the justification of these demands, and our reasons for obeying them. Readings from both the historical and contemporary philosophical literature.")

 
 
 
 Enrollment.create(user_id: 1, course_id: c1.id)
 Enrollment.create(user_id: 2, course_id: c1.id)
 Enrollment.create(user_id: 3, course_id: c2.id)
 Enrollment.create(user_id: 4, course_id: c3.id)
 Enrollment.create(user_id: 1, course_id: c4.id)
 Enrollment.create(user_id: 2, course_id: c5.id)


puts 'seeded'