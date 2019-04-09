# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Trip.destroy_all
UserTrip.destroy_all
Event.destroy_all

User.create(firstname: "Sarah", lastname: "Shin", email: "sarah.shin@flatironschool.com", password:"123")
User.create(firstname: "Janet", lastname: "Shin", email: "janet.shin@flatironschool.com", password:"123")

Trip.create(location:"Lisbon, Portugal", startdate: "May 1, 2019", enddate: "May 4, 2019")

UserTrip.create(user_id: 1, trip_id: 1)

Event.create(date: "May 1, 2019", time: "10:00 AM", user_trip_id: 1, name: "something", address: "somewhere", url:"blahblah.com", imgurl:"blah.jpg")
Event.create(date: "May 2, 2019", time: "2:00 PM", user_trip_id: 1, name: "something", address: "somewhere", url:"blahblah.com", imgurl:"blah.jpg")
