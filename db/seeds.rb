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
products = Product.all 

products.each do |product|
  supplier_id = Supplier.all.sample.id
  product.supplier_id = supplier_id
  product.save
end