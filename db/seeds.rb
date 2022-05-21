Role.destroy_all
Role.reset_pk_sequence 

Audition.destroy_all
Audition.reset_pk_sequence



harry_potter = Role.create(character_name: "Harry Potter")
hermione_granger = Role.create(character_name: "Hermione Granger")
ron_weasley = Role.create(character_name: "Ron Weasley")

Audition.create(actor: "Anna", location: "Wixom", phone: 5175151417, hired: true, role_id: hermione_granger.id)
Audition.create(actor: "Jonas", location: "Germany", phone: 5173045577, hired: true, role_id: harry_potter.id)
Audition.create(actor: "Kevin", location: "House", phone: 1234567890, hired: false, role_id: ron_weasley.id)
Audition.create(actor: "Ghost", location: "Mansion", phone: 5173045577, hired: true, role_id: harry_potter.id)

puts "🌱 🌱 🌱  SEEDED 🌱 🌱 🌱 🌱 "
