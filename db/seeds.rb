# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teammember_list = [
  "Jenny Ricard",
  "Lesley Hargreaves",
  "Chad Massie",
  "Aba Blankson",
  "Scott Anderson",
  "Tanya Fox",
  "Jennifer Dart",
  "Jen Davis",
  "Kevin Leahey",
  "Elisabeth Hancock",
  "Aisha Johnson",
  "Annie Unger",
  "Ariana Ortega",
  "Camille Green",
  "Caryn Brock",
  "Jessica Joseph",
  "Kyle Fredericks",
  "Matt Halterman",
  "Michael Moreland",
  "Neal Pettingill",
  "Ryan Gleich",
  "Ryan Hydock",
  "Sarah Knapp",
  "Tara Kuhn",
  "Tracey Shaup",
  "Wendy Guevara",
  "Jen Gallihugh",
  "Miriam Hancock",
  "Andy Hahn",
  "Michele Paganin",
  "Tim Weber",
  "Yezan Abdul-Razeq",
  "Adam Tate",
  "Amy Merhige",
  "Dana Mikelson",
  "Matt McCabe",
  "Darell Boseman",
  "Deryn Pomeroy",
  "Fatimeh Rajabi",
  "Greg Sluck",
  "Joanna Cleary",
  "Ryan Bui",
  "Alice Selighson",
  "Carole Mitchell",
  "Ignacio Noboa",
  "Kyle Bourgeois"
]

teammember_list.each do |name|
  Teammember.create( name: name )
end
