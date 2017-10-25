# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
image:"https://images-na.ssl-images-amazon.com/images/I/51O7b208uqL._SL500_AC_SS350_.jpg",
name: "Iphone7",
description: "It's the newest Iphone YET!!",
price_in_cents: 1000
)

Product.create(
  image:"https://cdn2.harveynorman.com.au/media/wysiwyg/X9K14PA.jpg",
name: "Computer",
description: "It's a working laptop",
price_in_cents: 1200
)

Product.create(
  image:"http://cdn.makeuseof.com/wp-content/uploads/2016/03/logitech-k480.png?x97327",
name: "Bluetooth Keyboard",
description: "Bluetooth keyboard with working thingy",
price_in_cents: 50
)

Product.create(
  image:"https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/103/10389/10389797_3.jpg",
name: "Bose Headphones",
description: "Super-Rad Noise Cancelling Headphones",
price_in_cents: 500
)

Product.create(
  image:"https://www.woodenstreet.com/images/dining-table-sets/dining3.jpg",
name: "Dining Table",
description: "You can eat off of it",
price_in_cents: 600
)

Product.create(
  image:"https://cdn.jysk.ca/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/7/1/716-15-1010_hoganas_office_chair.jpg",
name: "Office Chair",
description: "its an office chair , it even has SETTINGS",
price_in_cents: 100
)

Product.create(
  image:"http://www.informit.com/ShowCover.aspx?isbn=032188499X",
name: "learn Ruby the hardway",
description: "The best book to start with to learn Ruby and make strong basics",
price_in_cents: 10
)
