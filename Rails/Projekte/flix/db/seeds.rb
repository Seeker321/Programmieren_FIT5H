# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create(title: "Superman", rating: 10, total_gross: 200000, description: "Dies Das", released_on: "2012-07-06")
Movie.create(title: "Spiderman", rating: 8, total_gross: 5900000, description: "Spinne", released_on: "2010-09-08")
Movie.create(title: "Batman", rating: 6, total_gross: 8800000, description: "Fledermaus", released_on: "2014-02-03")