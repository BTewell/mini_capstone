# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# product1 = Product.new(name: "AD&D 2nd Edition Dungeon Master's Guidebook", description: "You need this to run campaigns.", price: "$35.00", image_url: "")
# product1.save

# product1 = Product.new(name: "AD&D 2nd Edition Player's Handbook", description: "You need this to create characters.", price: "$30.00", image_url: "")
# product1.save
# product1 = Product.new(name: "AD&D 2nd Edition Monsters Manual vol. 1", description: "You need this to generate monsters.", price: "$25.00", image_url: "")
# product1.save
# product1 = Product.new(name: "AD&D 2nd Edition Monsters Manual vol. 2", description: "You need this to run campaigns.", price: "$25.00", image_url: "")
# product1.save
# product1 = Product.new(name: "DicePro Dice set, Full", description: "Nine dice set (1d4, 3d6, 1d8, 2d10, 1d12, 1d20), Polyurethane w/ faux pearl finish", price: "$22.00", image_url: "")
# product1.save
# products = Product.all 

# products.each do |product|
#   supplier_id = Supplier.all.sample.id
#   product.supplier_id = supplier_id
#   product.save
# end
image = Image.create(url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSKvD3V3PyAdo6EpxIJ92j8DWR3Rm9dKw6kDK4zCqMLTtBP2aGQZ-p-hWsWUKo0HZnoltdEIlQ2PcUqj12HZkzQXJZVvpa-9StY1m7-wP4&usqp=CAE", product_id: 2)
image = Image.create(url: "https://pictures.abebooks.com/isbn/9780880387385-us.jpg", product_id: 3)
image = Image.create(url: "https://images-na.ssl-images-amazon.com/images/I/51d3xbc8COL._SX394_BO1,204,203,200_.jpg", product_id: 4)
image = Image.create(url: "https://cdn.shopify.com/s/files/1/2483/6734/products/LazuliOrb_large.jpg?v=1534480166", product_id: 5)
image = Image.create(url: "https://upload.wikimedia.org/wikipedia/en/thumb/8/8d/Tome_of_Magic.png/220px-Tome_of_Magic.png", product_id: 6)
image = Image.create(url: "https://images-na.ssl-images-amazon.com/images/I/51Z5C5RRT7L._SX362_BO1,204,203,200_.jpg", product_id:8)
image = Image.create(url: "https://images-na.ssl-images-amazon.com/images/I/51G7259RC5L._SX362_BO1,204,203,200_.jpg", product_id: 9)
image = Image.create(url: "https://crystal-cdn4.crystalcommerce.com/photos/878473/large/phbr1-1.jpg", product_id: 10)
image = Image.create(url: "https://cdn.shopify.com/s/files/1/1066/8352/products/polyhedral-dice-single-100-sided-polyhedral-dice-d100-solid-purple-color-with-white-numbering-45mm-1_750x.jpg?v=1540310497", product_id: 11)
image = Image.create(url: "https://tshop.r10s.com/f58/9f8/4676/fafe/501d/18c2/1995/11fce9b6b7a81e84d033d4.jpg", product_id: 12)
image = Image.create(url: "https://i.imgur.com/yQLZwuA.jpg", product_id: 13)