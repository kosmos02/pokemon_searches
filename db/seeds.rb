# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Search.destroy_all
User.destroy_all

Search.create name: 'ditto'
Search.create name: 'pikachu'
Search.create name: 'charizard'
Search.create name: 'squirtle'
Search.create name: 'pigeot'
Search.create name: 'mew'
Search.create name: 'articuno'
Search.create name: 'moltres'
Search.create name: 'zapdos'
Search.create name: 'blastoise'
Search.create name: 'venusaur'
Search.create name: 'meowth'
Search.create name: 'ekans'

User.create username: 'Alex', password: 'alex'
User.create username: 'Myra Rose', password: 'bebe'
