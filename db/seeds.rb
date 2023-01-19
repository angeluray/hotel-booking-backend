# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create!([
    {
      name: 'Kumie',
      username: 'Kumie',
      email: 'kumie@gmail.com',
      password: 'kumie',
      role: 'Admin'
    },{
      name: 'Hana',
      username: 'Hana',
      email: 'Hana@gmail.com',
      password: 'Hana',
    },{
      name: 'Tadesse',
      username: 'Tadesse',
      email: 'Tadesse@gmail.com',
      password: 'Tadesse'
    },{
      name: 'Angel',
      username: 'Angel',
      email: 'Angel@gmail.com',
      password: 'Angel'
    }
  ])
  
  
  City.create!([
    {name:'Addis Ababa'},
    {name:'Venezuela'},
    {name:'Utrecht'},
    {name:'Amsterdam'},
    {name:'Cairo'},
    {name:'England'},
    {name:'Greece'},
    {name:'Athens'},
    {name:'Peru'},
    {name:'Spain'},
    {name:'Portugal'},
    {name:'Italy'},
    {name:'Lisbon'},
    {name:'Lagos'},
    {name:'Ghana'},
    {name:'USA'},
    {name:'New York'},
    {name:'Madrid'},
    {name:'Barcelona'},
    {name:'Taiwan'},
  ])
  
  
  RoomType.create!([
    { name:'Single', description: 'A room assigned to one person. May have one or more beds.', price: 300},
    { name:'Double', description: 'A room assigned to two people. May have one or more beds.', price: 200},
    { name:'Triple', description: 'A room that can accommodate three persons and has been fitted with three twin beds, one double bed and one twin bed or two double beds.', price: 200},
    { name:'Quad', description: 'A room assigned to four people. May have two or more beds.', price: 300},
    { name:'Queen', description: 'A room with a queen-sized bed. May be occupied by one or more people.', price: 400},
    { name:'King', description: 'A room with a king-sized bed. May be occupied by one or more people.', price: 200},
    { name:'Twin', description: 'A room with two twin beds. May be occupied by one or more people.', price: 400},
    { name:'Hollywood Twin Room', description: ' A room that can accommodate two persons with two twin beds joined together by a common headboard. Most of the budget hotels tend to provide many of these room settings which cater both couples and parties in two.', price: 100},
    { name:'Double-double', description: 'A Room with two double ( or perhaps queen) beds. And can accommodate two to four persons with two twin, double or queen-size beds.', price: 500},
    { name:'Studio', description: 'A room with a studio bed- a couch which can be converted into a bed. May also have an additional bed.', price: 400},
  ])

  Hotel.create!([
    {
      name: 'Addis International Hotel',
      description: 'Addis International hotel is a 4-star hotel located in the heart of Addis Ababa. It is a 5-minute walk from the National Museum of Ethiopia and 10 minutes from the National Theatre. The hotel offers free Wi-Fi and free parking. The rooms at Addis International hotel are air-conditioned and have a flat-screen TV with satellite channels. Each room has a private bathroom with a shower and free toiletries. The hotel has a 24-hour front desk and a restaurant. The hotel is 1.5 km from the National Palace Museum and 2 km from the National Museum of Ethiopia. Bole International Airport is 6 km away.',
     rating: 4,
     image: 'https://cf.bstatic.com/images/hotel/max1024x768/247/247109430.jpg',
      city_id: 1
    },
    {
      name: 'Addis Grand Hotel',
      description: 'Addis Grand Hotel is a 4-star hotel located in the heart of Addis Ababa. It is a 5-minute walk from the National Museum of Ethiopia and 10 minutes from the National Theatre. The hotel offers free Wi-Fi and free parking. The rooms at Addis Grand Hotel are air-conditioned and have a flat-screen TV with satellite channels. Each room has a private bathroom with a shower and free toiletries. The hotel has a 24-hour front desk and a restaurant. The hotel is 1.5 km from the National Palace Museum and 2 km from the National Museum of Ethiopia. Bole International Airport is 6 km away.',
      rating: 4,
      image: 'https://cf.bstatic.com/images/hotel/max1024x768/247/247109430.jpg',
      city_id: 2 
    },
    {
      name: 'Blue Nile Hotel',
      description: 'Blue Nile Hotel is a 4-star hotel located in the heart of Addis Ababa. It is a 5-minute walk from the National Museum of Ethiopia and 10 minutes from the National Theatre. The hotel offers free Wi-Fi and free parking. The rooms at Blue Nile Hotel are air-conditioned and have a flat-screen TV with satellite channels. Each room has a private bathroom with a shower and free toiletries. The hotel has a 24-hour front desk and a restaurant. The hotel is 1.5 km from the National Palace Museum and 2 km from the National Museum of Ethiopia. Bole International Airport is 6 km away.',
      rating: 4,
      image: 'https://cf.bstatic.com/images/hotel/max1024x768/248/247109430.jpg',
      city_id: 3
    },
    {
      name: 'Goha Hotel',
      description: 'Goha Hotel is a 4-star hotel located in the heart of Addis Ababa. It is a 5-minute walk from the National Museum of Ethiopia and 10 minutes from the National Theatre. The hotel offers free Wi-Fi and free parking. The rooms at Goha Hotel are air-conditioned and have a flat-screen TV with satellite channels. Each room has a private bathroom with a shower and free toiletries. The hotel has a 24-hour front desk and a restaurant. The hotel is 1.5 km from the National Palace Museum and 2 km from the National Museum of Ethiopia. Bole International Airport is 6 km away.',
      rating: 4,
      image: 'https://cf.bstatic.com/images/hotel/max1024x768/249/247109430.jpg',
      city_id: 4
    },

  ])

