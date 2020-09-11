Supplier.create!(name: "Apple", email: "Apple@example.com", phone_number: "555-123-4321")
Supplier.create!(name: "Amazon", email: "Amazon@example.com", phone_number: "555-321-1234")

Product.create!(name: "lamp", price: 12, description: "silver lamp with white lamp shade", quantity: 32, supplier_id: 2)
Product.create!(name: "candle", price: 16, description: "cinnamon scented candle", quantity: 45, supplier_id: 2)
Product.create!(name: "iPhone 11", price: 950, description: "Space Grey Apple iPhone", quantity: 43, supplier_id: 1)
Product.create!(name: "iPad", price: 999, description: "Space Grey Apple iPhone", quantity: 54, supplier_id: 1)