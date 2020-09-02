require "http"

response = HTTP.get("http://localhost:3000/api/allproducts")
pp response.parse
