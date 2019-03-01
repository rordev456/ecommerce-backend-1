# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


kevyWevy = User.create({name: "Kevin", email: "kev@gmail.com", password: "sup"})

firstSale = Cart.create({user: kevyWevy, checkout: true})
secondSale = Cart.create({user: kevyWevy, checkout: true})
thirdSale = Cart.create({user: kevyWevy})

shirts = Category.create({name: "Shirts"})
suits = Category.create({name: "Suits"})
trousers = Category.create({name: "Trousers"})

extraSmall = Size.create({name: "Extra Small"})
small = Size.create({name: "Small"})
medium = Size.create({name: "Medium"})
large = Size.create({name: "Large"})
extraLarge = Size.create({name: "Extra Large"})

whiteShirt = Product.create({name: "White Shirt", price: 50, description: "The staple shirt in any man's closet.", category: shirts})
blackShirt = Product.create({name: "Black Shirt", price: 50, description: "The ultimate sleek shirt.", category: shirts})
blueShirt = Product.create({name: "Blue Shirt", price: 50, description: "The classic perfect color.", category: shirts})
navyTrousers = Product.create({name: "Navy Trousers", price: 100, description: "The go to.", category: trousers})
pinstripeTrousers = Product.create({name: "Pinstripe Trousers", price: 100, description: "The Gatsby style.", category: trousers})
whiteTrousers = Product.create({name: "White Trousers", price: 100, description: "The special occasion trousers.", category: trousers})
doubleBreastedSuit = Product.create({name: "Double Breasted Pinstripe Suit", price: 500, description: "Straight outta The Godfather.", category: suits})
blackTuxedo = Product.create({name: "Black Tuxedo", price: 500, description: "For the definition of elegance.", category: suits})
navySuit = Product.create({name: "Navy Suit", price: 500, description: "Politically Correct.", category: suits})
navyCheckSuit = Product.create({name: "Navy Check Suit", price: 500, description: "Checks over stripes.", category: suits})

productCart1 = ProductCart.create({cart: firstSale, product: whiteShirt, size: large})
productCart2 = ProductCart.create({cart: firstSale, product: blackShirt, size: small})
productCart3 = ProductCart.create({cart: firstSale, product: blueShirt, size: extraSmall})
productCart4 = ProductCart.create({cart: secondSale, product: whiteShirt, size: small})
productCart5 = ProductCart.create({cart: secondSale, product: whiteShirt, size: medium})
productCart6 = ProductCart.create({cart: secondSale, product: blackShirt, size: large})
productCart7 = ProductCart.create({cart: secondSale, product: blueShirt, size: medium})
productCart8 = ProductCart.create({cart: thirdSale, product: blueShirt, size: extraSmall})
productCart9 = ProductCart.create({cart: thirdSale, product: blueShirt, size: medium})
productCart10 = ProductCart.create({cart: thirdSale, product: blueShirt, size: medium})
productCart11 = ProductCart.create({cart: thirdSale, product: blueShirt, size: extraLarge})
productCart12 = ProductCart.create({cart: thirdSale, product: blueShirt, size: extraLarge})

Size.all.each do |size|
    totalWhiteShirts = Inventory.create({amount: 20, product: whiteShirt, size: size})
    totalBlackShirts = Inventory.create({amount: 20, product: blackShirt, size: size})
    totalBlueShirts = Inventory.create({amount: 20, product: blueShirt, size: size})
    totalNavyTrousers = Inventory.create({amount: 20, product: navyTrousers, size: size})
    totalPinstripeTrousers = Inventory.create({amount: 20, product: pinstripeTrousers, size: size})
    totalWhiteTrousers = Inventory.create({amount: 20, product: whiteTrousers, size: size})
    totalDoubleBreastedSuit = Inventory.create({amount: 20, product: doubleBreastedSuit, size: size})
    totalBlackTuxedo = Inventory.create({amount: 20, product: blackTuxedo, size: size})
    totalNavySuit = Inventory.create({amount: 20, product: navySuit, size: size})
    totalNavyCheckSuit = Inventory.create({amount: 20, product: navyCheckSuit, size: size})
end
