# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.delete_all
# User.reset_pk_sequence
# drew pw: iwantatesla user_id = 1
# tiffany pw: help user_id = 2
Closet.delete_all
Closet.reset_pk_sequence
Category.delete_all
Category.reset_pk_sequence
Itemcategory.delete_all
Itemcategory.reset_pk_sequence
Item.delete_all
Item.reset_pk_sequence


tiffcloset1 = Closet.create(title: "My Closet", user_id: 1)
tiffcloset2 = Closet.create(title: "Ron's Closet", user_id: 1)


knitsweater = Item.create(name: "Knit Sweater", description: "grey, soft, oversized sweater", worn_count: 0, size: "small", condition: "good", closet_id: tiffcloset1.id)
brownturtleneck = Item.create(name: "brown turtleneck sweater", description: "brown, soft, turtleneck sweater", worn_count: 0, size: "small", condition: "good", closet_id: tiffcloset1.id)
turtleneck = Item.create(name: "turtleneck sweater", description: "grey, soft, oversized sweater", worn_count: 0, size: "small", condition: "good", closet_id: tiffcloset1.id)
sweatpants = Item.create(name: "Old sweatpants", description: "grey, gym sweatpants", worn_count: 0, size: "small", condition: "old", closet_id: tiffcloset1.id)
hat = Item.create(name: "hat", description: "big hat", worn_count: 0, size: "head-sized", condition: "good", closet_id: tiffcloset1.id)
cap = Item.create(name: "baseball cap", description: "Seahawks cap", worn_count: 0, size: "head-sized", condition: "good", closet_id: tiffcloset1.id)
jeanjacket = Item.create(name: "Jean Jacket", description: "Ripped Jean Jacket", worn_count: 0, size: "small", condition: "fair", closet_id: tiffcloset1.id)
flaredjeans = Item.create(name: "Flared Jeans", description: "disco jeans", worn_count: 0, size: "medium", condition: "new", closet_id: tiffcloset1.id)
darkjeans = Item.create(name: "Dark Jeans", description: "skinny dark wash jeans", worn_count: 0, size: "26", condition: "good", closet_id: tiffcloset1.id)
slippers = Item.create(name: "Slippers", description: "home slippers", worn_count: 0, size: "7", condition: "fair", closet_id: tiffcloset1.id)
beanie = Item.create(name: "Beanie", description: "red beanie", worn_count: 0, size: "head-sized", condition: "fair", closet_id: tiffcloset1.id)
parka = Item.create(name: "Parka", description: "blue, for rainy days", worn_count: 0, size: "medium", condition: "fair", closet_id: tiffcloset1.id)
goldhoops = Item.create(name: "Gold Hoops", description: "hoop earrings, large", worn_count: 0, size: "large", condition: "new", closet_id: tiffcloset1.id)
nikesweatpants = Item.create(name: "Nike sweatpants", description: "grey sweatpants", worn_count: 0, size: "medium", condition: "old", closet_id: tiffcloset1.id)

jeans = Category.create(title: "Jeans")
pants = Category.create(title: "Pants")
shoes = Category.create(title: "Shoes")
accessory = Category.create(title: "Accessory")
tops = Category.create(title: "Tops")
sweaters = Category.create(title: "Sweaters")
casual = Category.create(title: "Casual")
jewelry = Category.create(title: "Jewelry")
rain = Category.create(title: "Rain")
cold = Category.create(title: "Cold")
formal = Category.create(title: "Formal")
bottoms = Category.create(title: "Bottoms")
outerwear = Category.create(title: "Outerwear")




Itemcategory.create(item_id: knitsweater.id, category_id: tops.id)
Itemcategory.create(item_id: knitsweater.id, category_id: sweaters.id)
Itemcategory.create(item_id: knitsweater.id, category_id: cold.id)

Itemcategory.create(item_id: brownturtleneck.id, category_id: tops.id)
Itemcategory.create(item_id: brownturtleneck.id, category_id: sweaters.id)
Itemcategory.create(item_id: brownturtleneck.id, category_id: cold.id)

Itemcategory.create(item_id: turtleneck.id, category_id: tops.id)
Itemcategory.create(item_id: turtleneck.id, category_id: sweaters.id)
Itemcategory.create(item_id: turtleneck.id, category_id: cold.id)

Itemcategory.create(item_id: sweatpants.id, category_id: casual.id)
Itemcategory.create(item_id: sweatpants.id, category_id: cold.id)
Itemcategory.create(item_id: sweatpants.id, category_id: pants.id)
Itemcategory.create(item_id: sweatpants.id, category_id: bottoms.id)

Itemcategory.create(item_id: nikesweatpants.id, category_id: casual.id)
Itemcategory.create(item_id: nikesweatpants.id, category_id: pants.id)
Itemcategory.create(item_id: nikesweatpants.id, category_id: cold.id)
Itemcategory.create(item_id: nikesweatpants.id, category_id: bottoms.id)


Itemcategory.create(item_id: hat.id, category_id: casual.id)
Itemcategory.create(item_id: hat.id, category_id: cold.id)
Itemcategory.create(item_id: hat.id, category_id: accessory.id)

Itemcategory.create(item_id: beanie.id, category_id: casual.id)
Itemcategory.create(item_id: beanie.id, category_id: cold.id)
Itemcategory.create(item_id: beanie.id, category_id: accessory.id)

Itemcategory.create(item_id: beanie.id, category_id: casual.id)
Itemcategory.create(item_id: beanie.id, category_id: cold.id)
Itemcategory.create(item_id: beanie.id, category_id: accessory.id)

Itemcategory.create(item_id: cap.id, category_id: casual.id,)
Itemcategory.create(item_id: cap.id, category_id: rain.id)
Itemcategory.create(item_id: cap.id, category_id: accessory.id)

Itemcategory.create(item_id: jeanjacket.id, category_id: tops.id)
Itemcategory.create(item_id: jeanjacket.id, category_id: outerwear.id)
Itemcategory.create(item_id: jeanjacket.id, category_id: cold.id)

Itemcategory.create(item_id: parka.id, category_id: tops.id)
Itemcategory.create(item_id: parka.id, category_id: outerwear.id)
Itemcategory.create(item_id: parka.id, category_id: cold.id)
Itemcategory.create(item_id: parka.id, category_id: rain.id)


Itemcategory.create(item_id: flaredjeans.id, category_id: casual.id)
Itemcategory.create(item_id: flaredjeans.id, category_id: pants.id)
Itemcategory.create(item_id: flaredjeans.id, category_id: bottoms.id)

Itemcategory.create(item_id: darkjeans.id, category_id: casual.id)
Itemcategory.create(item_id: darkjeans.id, category_id: pants.id)
Itemcategory.create(item_id: darkjeans.id, category_id: bottoms.id)

Itemcategory.create(item_id: slippers.id, category_id: casual.id)
Itemcategory.create(item_id: slippers.id, category_id: cold.id)
Itemcategory.create(item_id: slippers.id, category_id: shoes.id)



Itemcategory.create(item_id: goldhoops.id, category_id: jewelry.id)
Itemcategory.create(item_id: goldhoops.id, category_id: accessory.id)

