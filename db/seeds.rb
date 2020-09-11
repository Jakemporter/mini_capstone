Supplier.create!(name: "Apple", email: "Apple@example.com", phone_number: "555-123-4321")
Supplier.create!(name: "Amazon", email: "Amazon@example.com", phone_number: "555-321-1234")

Product.create!(name: "lamp", price: 12, description: "silver lamp with white lamp shade", quantity: 32, supplier_id: 2)
Product.create!(name: "candle", price: 16, description: "cinnamon scented candle", quantity: 45, supplier_id: 2)
Product.create!(name: "iPhone 11", price: 950, description: "Space Grey Apple iPhone", quantity: 43, supplier_id: 1)
Product.create!(name: "iPad", price: 999, description: "Space Grey Apple iPhone", quantity: 54, supplier_id: 1)

Image.create!(product_id: 3, url: "https://www.att.com/catalog/en/idse/Apple/Apple%20iPhone%2011%
  0Pro/Midnight%20Green-hero-zoom.png")
Image.create!(product_id: 3, url: "https://icdn2.digitaltrends.com/image/digitaltrends/iphone11-review.jpg")
Image.create!(product_id: 3, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSOMoN1RCcwleslxpLVcdCkfEPwMADEB1n0oA&usqp=CAU")
Image.create!(product_id: 1, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSfy3XjkmsCt4AIUPfXqXw526BWBU1w9FMk3w&usqp=CAU")
Image.create!(product_id: 2, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQFsVSd6DMtKPq67oE81U5KcrGpTb_y03yo9Q&usqp=CAU")
Image.create!(product_id: 4, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRPvsx29MB8-tLW4Ckdddr4yDFcMHJW2rMViw&usqp=CAU")