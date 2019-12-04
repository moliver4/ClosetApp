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
# tiffany pw: help user_id
Closet.delete_all
Closet.reset_pk_sequence
Category.delete_all
Category.reset_pk_sequence
Itemcategory.delete_all
Itemcategory.reset_pk_sequence
Item.delete_all
Item.reset_pk_sequence

Closet.create(title: "Main Closet", user_id: 1)
Closet.create(title: "Main", user_id: 2)

Item.create(name: "Knit Sweater", description: "grey, soft, oversized sweater", size: "small", condition: "good")
Item.create(name: "brown turtleneck sweater", description: "brown, soft, turtleneck sweater", size: "small", condition: "good")
Item.create(name: "turtleneck sweater", description: "grey, soft, oversized sweater", size: "small", condition: "good")
Item.create(name: "knit sweater", description: "grey, soft, oversized sweater", size: "small", condition: "good")
Item.create(name: "knit sweater", description: "grey, soft, oversized sweater", size: "small", condition: "good")
Item.create(name: "knit sweater", description: "grey, soft, oversized sweater", size: "small", condition: "good")
Item.create(name: "knit sweater", description: "grey, soft, oversized sweater", size: "small", condition: "good")
Item.create(name: "knit sweater", description: "grey, soft, oversized sweater", size: "small", condition: "good")
Item.create(name: "knit sweater", description: "grey, soft, oversized sweater", size: "small", condition: "good")

