# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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
    user_id:6
)


Space.create(
     size: "50",
     dimensions: "500*500",
     floor_number: 2,
     number_of_toilets: 2,
     nearby_landmark: "cinema",
     user_id:6
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
    user_id: 6,
    space_id: 1
)
BookingRecord.create(
    space_id:1,
    user_id:6
)
