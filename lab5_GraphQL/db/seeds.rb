Resort.delete_all
Resort.create([
                 {name:'EasyTravel', email: 'et@yandex.ru'},
                 {name: 'Yantar', email: 'yantarSanatory@mail.ru'},
                 {name:'Zhemchuzhina', email: 'otdih332@gmail.com'},
                 {name:'Beerloga', email: 'beerloga@yandex.ru'},
               ])

Apartment.delete_all
Apartment.create([
                   {room_type: 'President', description: 'Great', resort_id: 3},
                   {room_type: 'Lux', description: 'Luxury', resort_id: 3},
                   {room_type: 'Premium', description: 'Premium comfort', resort_id: 2},
                   {room_type: 'Business', description: 'For business people', resort_id: 2},
                   {room_type: 'Family', description: 'For families with children', resort_id: 3},
                   {room_type: 'Econom', description: 'For lonely strangers', resort_id: 4}
              ])