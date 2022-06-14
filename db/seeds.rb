# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ShortenedUrl.create(url: 'http://www.google.com', string_hash: 'a')
ShortenedUrl.create(url: 'http://www.twitter.com', string_hash: 'b')
ShortenedUrl.create(url: 'http://www.github.com/joyvis', string_hash: 'c')
