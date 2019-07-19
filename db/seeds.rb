# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


<<<<<<< HEAD

=======
User.create(email:"a@example.com",
    password_digest:"abc123",
    user_type_id:1)
>>>>>>> 9b35abb72ef5444a750ce0c94e0dbef2da4e286f


  

<<<<<<< HEAD

=======
Space.create(
    space_name:"ZiggleTech",
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

SpaceAddress.create(
    house_number:103/1,
    street:1,
    city:"NOIDA",
    pincode:"201301",
    state:"UP",
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

BookingRecord.create(
    space_id:1,
    user_id:1
)

>>>>>>> 9b35abb72ef5444a750ce0c94e0dbef2da4e286f
SpaceAddress.create{
    street:"CBlock,Sector63",
    city:"Noida",
    pincode:201301,
    state:"Uttar Pradesh",
    latitude:21.617477,
    longitude:77.386950 , 
    space_id: 2
}

