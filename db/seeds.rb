# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

Book.create([
  { cover_image: "https://cdn2.penguin.com.au/covers/400/9781784752637.jpg", title: "To Kill a Mockingbird", author: "Harper Lee", isbn: "1234518254", genre: "Fiction", description: "A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice.", published_year: 1960 },
  { cover_image: "https://m.media-amazon.com/images/I/51kVpauOUAL.jpg", title: "The Seven Husbands of Evelyn Hugo", author: "Taylor Jenkins Reid", isbn: "1234512096", genre: "Fiction", description: "The captivating story of a glamorous Hollywood star and the secrets of her seven marriages.", published_year: 2017 },
  { cover_image: "https://m.media-amazon.com/images/I/51i3Od1VGpL.jpg", title: "Things Fall Apart", author: "Chinua Achebe", isbn: "9472836890", genre: "Historical Fiction", description: "A classic tale of a Nigerian village’s downfall under colonialism and the tensions between tradition and change.", published_year: 1958 },
  { cover_image: "https://cdn2.penguin.com.au/covers/400/9781718503700.jpg", title: "The Nature of Code", author: "Daniel Shiffman", isbn: "1234567890", genre: "Non-fiction", description: "An exploration of the underlying principles of nature and how they apply to programming and simulation.", published_year: 2012 },
  { cover_image: "https://images-na.ssl-images-amazon.com/images/I/71hjjM2q6bL.jpg", title: "Romeo and Juliet", author: "William Shakespeare", isbn: "1234521820", genre: "Drama", description: "A tragic love story of two young lovers from feuding families, set in Verona.", published_year: 1597 },
  { cover_image: "https://m.media-amazon.com/images/I/318nujF5v5L.jpg", title: "Twilight", author: "Stephenie Meyer", isbn: "1234561204", genre: "Fantasy", description: "The love story between a human girl and a vampire, set in the rainy town of Forks.", published_year: 2005 },
  { cover_image: "https://m.media-amazon.com/images/I/51TI+w56qFL.jpg", title: "The Catcher in the Rye", author: "J.D. Salinger", isbn: "4334567890", genre: "Fiction", description: "A story about a disillusioned teenager’s experiences and feelings about society and adulthood.", published_year: 1951 },
  { cover_image: "https://i.pinimg.com/originals/04/02/e8/0402e8ecfa3831692d6b9f5d491f48b8.jpg", title: "1984", author: "George Orwell", isbn: "1212312890", genre: "Dystopian", description: "A dystopian novel about a totalitarian regime that controls every aspect of life, including thought.", published_year: 1949 },
  { cover_image: "https://images-na.ssl-images-amazon.com/images/I/61dRoDRubtL.jpg", title: "The Great Gatsby", author: "F. Scott Fitzgerald", isbn: "3467567890", genre: "Fiction", description: "A portrayal of the Jazz Age in all its decadence and excess, seen through the eyes of narrator Nick Carraway.", published_year: 1925 },
  { cover_image: "https://m.media-amazon.com/images/I/41vtGGDhlEL.jpg", title: "Moby Dick", author: "Herman Melville", isbn: "1234532860", genre: "Adventure", description: "The story of Captain Ahab’s obsessive quest to kill the white whale, Moby Dick.", published_year: 1851 }
])