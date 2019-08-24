# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# EventsItem.delete_all
# Participant.delete_all
# User.delete_all
# Event.delete_all
# Item.delete_all

# puts 'Creating users...'
# User.create([
#     {nickname: "Andrey"},
#     {nickname: "Maggie"},
#     {nickname: "Desmond"},
#     {nickname: "John"},
#     {nickname: "Zoe"}
# ])

# puts 'Creating events...'
# Event.create([
#     {name: "Demo day", date: "2019-08-24 16:00:00"},
#     {name: "Zoe's birthday", date: "2019-12-31 19:00:00"},
#     {name: "Picnic", date: "2019-08-25 11:00:00"}
# ])

puts 'Creating items...'
Item.create([
    {name: "Seafood", is_default: true},
    {name: "Meat", is_default: true},
    {name: "Salt", is_default: true},
    {name: "Pepper", is_default: true},
    {name: "Curry", is_default: true}
])

# puts 'Creating participants...'
# Participant.create([
#     {event_id: Event.first.id, user_id: User.first.id, is_creator: true},
#     {event_id: Event.first.id, user_id: User.second.id},
#     {event_id: Event.first.id, user_id: User.last.id},
#     {event_id: Event.second.id, user_id: User.first.id, is_creator: true},
#     {event_id: Event.last.id, user_id: User.first.id}
# ])

puts 'Finished'