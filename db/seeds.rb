# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.create([
      {
        "title":"OPPOF19",
        "description":"OPPO F19 is officially announced on April 2021.",
        "price":280,
        "discountPercentage":17.91,
        "rating":4.3,
        "stock":123,
        "brand":"Oppo",
        "category":"smartphones",
        "images":["https://i.dummyjson.com/data/products/4/1.jpg","https://i.dummyjson.com/data/products/4/2.jpg",
                 "https://i.dummyjson.com/data/products/4/3.jpg","https://i.dummyjson.com/data/products/4/4.jpg",
                 "https://i.dummyjson.com/data/products/4/thumbnail.jpg"]
      },
      {
        "title":"Huawei P30",
        "description":"Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.",
        "price":499,
        "discountPercentage":10.58,
        "rating":4.09,
        "stock":32,
        "brand":"Huawei",
        "category":"smartphones",
        "images":["https://i.dummyjson.com/data/products/5/1.jpg","https://i.dummyjson.com/data/products/5/2.jpg","https://i.dummyjson.com/data/products/5/3.jpg"]
      },
      {
        "title":"MacBook Pro",
        "description":"MacBook Pro 2021 with mini-LED display may launch between September, November",
        "price":1749,
        "discountPercentage":11.02,
        "rating":4.57,
        "stock":83,
        "brand":"Apple",
        "category":"laptops",
        "images":["https://i.dummyjson.com/data/products/6/1.png","https://i.dummyjson.com/data/products/6/2.jpg",
                  "https://i.dummyjson.com/data/products/6/3.png","https://i.dummyjson.com/data/products/6/4.jpg"]
      },
      {
        "title":"Samsung Galaxy Book",
        "description":"Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched",
        "price":1499,
        "discountPercentage":4.15,
        "rating":4.25,
        "stock":50,
        "brand":"Samsung",
        "category":"laptops",
        "images":["https://i.dummyjson.com/data/products/7/1.jpg",
                  "https://i.dummyjson.com/data/products/7/2.jpg",
                  "https://i.dummyjson.com/data/products/7/3.jpg",
                  "https://i.dummyjson.com/data/products/7/thumbnail.jpg"]
      },
      {
        "title":"Microsoft Surface Laptop 4",
        "description":"Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.",
        "price":1499,
        "discountPercentage":10.23,
        "rating":4.43,
        "stock":68,
        "brand":"Microsoft Surface",
        "category":"laptops",
       "images":["https://i.dummyjson.com/data/products/8/1.jpg","https://i.dummyjson.com/data/products/8/2.jpg",
                 "https://i.dummyjson.com/data/products/8/3.jpg","https://i.dummyjson.com/data/products/8/4.jpg",
                 "https://i.dummyjson.com/data/products/8/thumbnail.jpg"]
      },
      {
        "title":"HP Pavilion 15-DK1056WM",
        "description":"HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10",
        "price":1099,"discountPercentage":6.18,
        "rating":4.43,"stock":89,"brand":"HP Pavilion","category":"laptops",
        "images":["https://i.dummyjson.com/data/products/10/1.jpg",
                 "https://i.dummyjson.com/data/products/10/2.jpg","https://i.dummyjson.com/data/products/10/3.jpg",
                 "https://i.dummyjson.com/data/products/10/thumbnail.jpeg"]
      },
      {
        "title": "iPhone 9",
        "description": "An apple mobile which is nothing like apple",
        "price": 549,
        "discountPercentage": 12.96,
        "rating": 4.69,
        "stock": 94,
        "brand": "Apple",
        "category": "smartphones",
        "images": [
          "https://i.dummyjson.com/data/products/1/1.jpg",
          "https://i.dummyjson.com/data/products/1/2.jpg",
          "https://i.dummyjson.com/data/products/1/3.jpg",
          "https://i.dummyjson.com/data/products/1/4.jpg",
          "https://i.dummyjson.com/data/products/1/thumbnail.jpg"
        ]
      },
      {
        "title": "iPhone X",
        "description": "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
        "price": 899,
        "discountPercentage": 17.94,
        "rating": 4.44,
        "stock": 34,
        "brand": "Apple",
        "category": "smartphones",
        "images": [
          "https://i.dummyjson.com/data/products/2/1.jpg",
          "https://i.dummyjson.com/data/products/2/2.jpg",
          "https://i.dummyjson.com/data/products/2/3.jpg",
          "https://i.dummyjson.com/data/products/2/thumbnail.jpg"
        ]
      },
      {
        "title": "Samsung Universe 9",
        "description": "Samsung's new variant which goes beyond Galaxy to the Universe",
        "price": 1249,
        "discountPercentage": 15.46,
        "rating": 4.09,
        "stock": 36,
        "brand": "Samsung",
        "category": "smartphones",
        "images": [
          "https://i.dummyjson.com/data/products/3/1.jpg"
        ]
      }
                         ])

p "Created #{product.count} Products"


User.create(
  username: "Joe",
  email: "joe@gmail.com",
  password: "123456",
  adress: "Some Street Name",
  phone: "+90432134551",
  country: "CY"
)

User.create(
  username: "Doe",
  email: "doe@gmail.com",
  password: "123456",
  adress: "Other Street Name",
  phone: "+90235784954",
  country: "TR"
)

user = User.find(1)
user.avatar.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'images.png')), filename: 'images.png', content_type: 'image/png')
user.save

user = User.find(2)
user.avatar.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'images.png')), filename: 'images.png', content_type: 'image/png')
user.save

p "Created #{User.all.count} Users"
p "Login as a user with these credentials: email: joe@gmail.com , password: 123456"
