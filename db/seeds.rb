# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.create(
    [
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
      }
]
)

p "Created #{product.count} Products"


users = User.create([{
    username: "Joe",
    email: "joe@gmail.com",
    password: "123456",
},
{
    username: "Doe",
    email: "doe@gmail.com",
    password: "123456",
}])



p "Created #{users.count} Users"
p "Login as a user with these credentials: email: joe@gmail.com , password: 123456"
