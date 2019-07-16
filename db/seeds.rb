# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


<<<<<<< HEAD

<<<<<<< HEAD
=======
User.create(email:"a@example.com",
    password_digest:"abc123",
    user_type_id:1)

UserDetail.create(
    fist_name:"lucifer",
    last_name:"satan",
    education_details:"B.tech",
    about_user:"Pro",
    city:"Delhi",
    college:"DBIT",
    phone_number:"956234579",
    mobile_number:"894563217",
    user_id:1
)


Space.create(
    space_name:"ZiggleTech",
=======
<<<<<<< HEAD
=======
Space.create(
    id: 1,
     space_address: "Noida",
>>>>>>> 2bcff224429a259146eb6de66037d44f3bfebb59
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

<<<<<<< HEAD
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

=======
>>>>>>> 2bcff224429a259146eb6de66037d44f3bfebb59
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
<<<<<<< HEAD
<<<<<<< HEAD
BookingRecord.create(
    space_id:1,
    user_id:1
)
>>>>>>> f32c76ee48acc997d733b151e64933d5563f4bde
=======
=======
>>>>>>> 2bcff224429a259146eb6de66037d44f3bfebb59
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
<<<<<<< HEAD
>>>>>>> e4333f536138e36c5c5599305b6baa22653c98ce
=======
>>>>>>> 4e1a2f82abeba704edf1deba161d6ba0c546a84c
>>>>>>> 2bcff224429a259146eb6de66037d44f3bfebb59
