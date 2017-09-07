# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
name: "Iphone7",
description: "It's the newest Iphone YET!!",
price_in_cents: 1000
)

Product.create(
name: "Computer",
description: "It's a working laptop",
price_in_cents: 1200
)

Product.create(
name: "Bluetooth Keyboard",
description: "Bluetooth keyboard with working thingy",
price_in_cents: 50
)

Product.create(
name: "Bose Headphones",
description: "Super-Rad Noise Cancelling Headphones",
price_in_cents: 500
)

Product.create(
name: "Dining Table",
description: "You can eat off of it",
price_in_cents: 600 
)

Product.create(
name: "Office Chair",
description: "its an office chair , it even has SETTINGS",
price_in_cents: 100
)

Product.create(
name: "Banana",
description: "It's a organic banana harvested from only the most sustainable jungles of the amazon",
price_in_cents: 10
)
