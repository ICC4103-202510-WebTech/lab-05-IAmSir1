# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(
  email: "dratini@pokemon.com",
  first_name: "Dratini",
  last_name: "Dragon"
)

User.create!(
  email: "wooper@pokemon.com",
  first_name: "Wooper",
  last_name: "Water"
)

User.create!(
  email: "gardevoir@pokemon.com",
  first_name: "Gardevoir",
  last_name: "Psychic"
)

User.create!(
  email: "goomy@pokemon.com",
  first_name: "Goomy",
  last_name: "Dragon"
)

User.create!(
  email: "lunala@pokemon.com",
  first_name: "Lunala",
  last_name: "Psychic"
)

User.create!(
  email: "appletun@pokemon.com",
  first_name: "Appletun",
  last_name: "Dragon"
)

User.create!(
  email: "litwick@pokemon.com",
  first_name: "Litwick",
  last_name: "Fire"
)

User.create!(
  email: "eevee@pokemon.com",
  first_name: "Eevee",
  last_name: "Normal"
)

User.create!(
  email: "oshawott@pokemon.com",
  first_name: "Oshawott",
  last_name: "Water"
)

User.create!(
  email: "spheal@pokemon.com",
  first_name: "Spheal",
  last_name: "Ice"
)

Chat.create!(
  sender_id: 1,
  receiver_id: 2
)

Chat.create!(
  sender_id: 3,
  receiver_id: 2
)

Chat.create!(
  sender_id: 3,
  receiver_id: 1
)

Chat.create!(
  sender_id: 4,
  receiver_id: 2
)

Chat.create!(
  sender_id: 9,
  receiver_id: 3
)

Chat.create!(
  sender_id: 5,
  receiver_id: 7
)

Chat.create!(
  sender_id: 8,
  receiver_id: 9
)

Chat.create!(
  sender_id: 4,
  receiver_id: 5
)

Chat.create!(
  sender_id: 5,
  receiver_id: 2
)

Chat.create!(
  sender_id: 1,
  receiver_id: 9
)

Message.create!(
  chat_id: 1,
  user_id: 9,
  body: "Hello"
)

Message.create!(
  chat_id: 2,
  user_id: 7,
  body: "How are you?"
)

Message.create!(
  chat_id: 3,
  user_id: 6,
  body: "I'm fine"
)

Message.create!(
  chat_id: 4,
  user_id: 4,
  body: "What are yoou doing?"
)

Message.create!(
  chat_id: 5,
  user_id: 3,
  body: "I'm playin with my dog"
)

Message.create!(
  chat_id: 6,
  user_id: 1,
  body: "I like to go out"
)

Message.create!(
  chat_id: 7,
  user_id: 6,
  body: "I'm leaving next week"
)

Message.create!(
  chat_id: 8,
  user_id: 5,
  body: "Have fun!"
)

Message.create!(
  chat_id: 9,
  user_id: 2,
  body: "Let's hang out!"
)

Message.create!(
  chat_id: 10,
  user_id: 3,
  body: "Sure!"
)