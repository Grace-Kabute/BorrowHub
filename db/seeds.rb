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
  { cover_image: "http://placekitten.com/200/300", title: "To Kill a Mockingbird", author: "Harper Lee", isbn: "1234518254", genre: "Fiction", description: "A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice.", published_year: 1960 },
  { cover_image: "http://placekitten.com/200/300", title: "The Seven Husbands of Evelyn Hugo", author: "Taylor Jenkins Reid", isbn: "1234512096", genre: "Fiction", description: "The captivating story of a glamorous Hollywood star and the secrets of her seven marriages.", published_year: 2017 },
  { cover_image: "http://placekitten.com/200/300", title: "Things Fall Apart", author: "Chinua Achebe", isbn: "9472836890", genre: "Historical Fiction", description: "A classic tale of a Nigerian village’s downfall under colonialism and the tensions between tradition and change.", published_year: 1958 },
  { cover_image: "http://placekitten.com/200/300", title: "The Nature of Code", author: "Daniel Shiffman", isbn: "1234567890", genre: "Non-fiction", description: "An exploration of the underlying principles of nature and how they apply to programming and simulation.", published_year: 2012 },
  { cover_image: "http://placekitten.com/200/300", title: "Romeo and Juliet", author: "William Shakespeare", isbn: "1234521820", genre: "Drama", description: "A tragic love story of two young lovers from feuding families, set in Verona.", published_year: 1597 },
  { cover_image: "http://placekitten.com/200/300", title: "Twilight", author: "Stephenie Meyer", isbn: "1234561204", genre: "Fantasy", description: "The love story between a human girl and a vampire, set in the rainy town of Forks.", published_year: 2005 },
  { cover_image: "http://placekitten.com/200/300", title: "The Catcher in the Rye", author: "J.D. Salinger", isbn: "4334567890", genre: "Fiction", description: "A story about a disillusioned teenager’s experiences and feelings about society and adulthood.", published_year: 1951 },
  { cover_image: "http://placekitten.com/200/300", title: "1984", author: "George Orwell", isbn: "1212312890", genre: "Dystopian", description: "A dystopian novel about a totalitarian regime that controls every aspect of life, including thought.", published_year: 1949 },
  { cover_image: "http://placekitten.com/200/300", title: "The Great Gatsby", author: "F. Scott Fitzgerald", isbn: "3467567890", genre: "Fiction", description: "A portrayal of the Jazz Age in all its decadence and excess, seen through the eyes of narrator Nick Carraway.", published_year: 1925 },
  { cover_image: "http://placekitten.com/200/300", title: "Moby Dick", author: "Herman Melville", isbn: "1234532860", genre: "Adventure", description: "The story of Captain Ahab’s obsessive quest to kill the white whale, Moby Dick.", published_year: 1851 }
])

# Book.create!(
#   title: "The Great Gatsby",
#   author: "F. Scott Fitzgerald",
#   isbn: "6253467890",
#   cover_image: "http://placekitten.com/200/300", # Example placeholder image
#   available: true
# )

# Book.create!(
#   title: "1984",
#   author: "George Orwell",
#   isbn: "0098754321",
#   cover_image: "http://placekitten.com/200/300", # Example placeholder image
#   available: true
# )