# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


lamp = Product.new(name: "lamp", price: 12, description: "silver lamp with white lamp shade")
lamp.save

candle = Product.new(name: "candle", price: 16, description: "cinnamon scented candle")
candle.save

iphone = Product.new(name: "iPhone 11", price: "950", description: "Space Grey Apple iPhone")
iphone.save