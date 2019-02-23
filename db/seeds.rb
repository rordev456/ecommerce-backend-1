# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


kevyWevy = User.create({name: "Kevin", email: "kev@gmail.com", password: "sup"})

firstSale = Cart.create({user: kevyWevy})
secondSale = Cart.create({user: kevyWevy})

shirts = Category.create({name: "Shirts"})

extraSmall = Size.create({name: "Extra Small"})
small = Size.create({name: "Small"})
medium = Size.create({name: "Medium"})
large = Size.create({name: "Large"})
extraLarge = Size.create({name: "Extra Large"})

whiteShirt = Product.create({name: "White Shirt", price: 50, description: "The staple shirt in any man's closet.", category: shirts})
blackShirt = Product.create({name: "Black Shirt", price: 50, description: "The ultimate sleek shirt.", category: shirts})
blueShirt = Product.create({name: "Blue Shirt", price: 50, description: "The classic perfect color.", category: shirts})

productCart1 = ProductCart.create({cart: firstSale, product: whiteShirt, size: large})
productCart2 = ProductCart.create({cart: firstSale, product: blackShirt, size: small})
productCart3 = ProductCart.create({cart: firstSale, product: blueShirt, size: medium})
productCart4 = ProductCart.create({cart: secondSale, product: whiteShirt, size: small})
productCart5 = ProductCart.create({cart: secondSale, product: whiteShirt, size: medium})
productCart6 = ProductCart.create({cart: secondSale, product: blackShirt, size: large})
productCart7 = ProductCart.create({cart: secondSale, product: blueShirt, size: medium})

totalWhiteShirts = Inventory.create({amount: 20, product: whiteShirt, size: medium})
totalBlackShirts = Inventory.create({amount: 20, product: blackShirt, size: extraSmall})
totalBlueShirts = Inventory.create({amount: 20, product: blueShirt, size: extraLarge})



