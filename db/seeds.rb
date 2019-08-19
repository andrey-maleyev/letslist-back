# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


EventsItem.delete_all
Participant.delete_all
User.delete_all
Event.delete_all
Item.delete_all

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
    {name: "Water", is_default: true},
    {name: "Milk", is_default: true},
    {name: "Coke", is_default: true},
    {name: "Juice", is_default: true},
    {name: "Tea", is_default: true},
    {name: "Coffee", is_default: true},
    {name: "Beer", is_default: true},
    {name: "Cake", is_default: true},
    {name: "Cookies", is_default: true},
    {name: "Sandwiches", is_default: true},
    {name: "Hamburgers", is_default: true},
    {name: "Pizza", is_default: true},
    {name: "Snacks", is_default: true},
    {name: "Chips", is_default: true},
    {name: "Chocolate", is_default: true},
    {name: "Paper", is_default: true},
    {name: "Pens", is_default: true},
    {name: "Projector", is_default: true},
    {name: "iPhone charger", is_default: true},
    {name: "Disposable plates", is_default: true},
    {name: "Disposable cups", is_default: true},
    {name: "Disposable forks", is_default: true},
    {name: "Candles", is_default: true}
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