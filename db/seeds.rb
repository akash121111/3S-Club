# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Space.create(
    id: 1,
     space_address: "Noida",
     size: "50",
     dimensions: "500*500",
     floor_number: 2,
     number_of_toilets: 2,
     nearby_landmark: "cinema",
     user_id:1
)

SpaceLocation.create(
    latitude: 58.000,
    longitude: -98.000,
    space_id:1
)

SpaceAvailableDay.create(
    monday: true,
    tuesday: true,
    wednesday: false,
    thursday: true,
    friday: false,
    saturday: true,
    sunday: false,
    space_id: 1
)

SpaceAvailabilityTiming.create(
    start_time: "12:00",
    end_time: "17:00",
    user_id: 1,
    space_id: 1
)
SpaceAddress.create{
    street:C Block,Sector 63
    city:Noida
    pincode:201301
    state:Uttar Pradesh
    latitude:28.617232
    longitude:77.686339
    space_id: 1
}

paceAddress.create{
    street:CBlock,Sector63
    city:Noida
    pincode:201301
    state:Uttar Pradesh
    latitude:28.617477
    longitude:77.386950  
    space_id: 1
}