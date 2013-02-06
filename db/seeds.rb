# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


directors = [
  { :name => "Ridley Scott", :dob => Date.parse("30/11/1937") },
  { :name => "Christopher Nolan", :dob => Date.parse("30/07/1970") },
  { :name => "Terry Gilliam", :dob => Date.parse("22/11/1940") },
  { :name => "Quentin Tarantino", :dob => Date.parse("27/03/1963") }
]

Director.destroy_all
directors.each do |director|
  d = Director.new
  d.name = director[:name]
  d.dob = director[:dob]
  d.save
end

movies = [
  { :title => "Blade Runner", :year => "1982", :director_id => Director.find_by_name("Ridley Scott").id  },
  { :title => "Prometheus", :year => "2012", :director_id => Director.find_by_name("Ridley Scott").id },
  { :title => "Pulp Ficion", :year => "1994", :director_id => Director.find_by_name("Quentin Tarantino").id },
  { :title => "Django Unchained", :year => "2012", :director_id => Director.find_by_name("Quentin Tarantino").id },
  { :title => "The Dark Knight", :year => "1985", :director_id => Director.find_by_name("Christopher Nolan").id },
  { :title => "Twelve Monkeys", :year => "1995", :director_id => Director.find_by_name("Terry Gilliam").id }
]

Movie.destroy_all
movies.each do |movie|
  m = Movie.new
  m.title = movie[:title]
  m.year = movie[:year]
  m.director_id = movie[:director_id]
  m.save
end

actors = [
  { :name => "Samuel L. Jackson", :dob => Date.parse("21/12/1948") },
  { :name => "Noomi Rapace", :dob => Date.parse("28/12/1979") },
  { :name => "Guy Edward Pearce", :dob => Date.parse("05/10/1967") },
  { :name => "Harrison Ford", :dob => Date.parse("13/07/1942") },
  { :name => "Bruce Willis", :dob => Date.parse("19/03/1955") },
  { :name => "Jamie Foxx", :dob => Date.parse("13/12/1967") },
  { :name => "Christian Bale", :dob => Date.parse("30/01/1974") },
]

Actor.destroy_all
actors.each do |actor|
  a = Actor.new
  a.name = actor[:name]
  a.dob = actor[:dob]
  a.save
end

roles = [
  { :character_name => "James Cole", :movie_id => Movie.find_by_title("Twelve Monkeys").id , :actor_id => Actor.find_by_name("Bruce Willis").id },
  { :character_name => "Bruce Wayne / Batman", :movie_id => Movie.find_by_title("The Dark Knight").id , :actor_id => Actor.find_by_name("Christian Bale").id },
  { :character_name => "Rick Deckard", :movie_id => Movie.find_by_title("Blade Runner").id , :actor_id => Actor.find_by_name("Harrison Ford").id },

]

Role.destroy_all
roles.each do |role|
  r = Role.new
  r.character_name = role[:character_name]
  r.movie_id = role[:movie_id]
  r.actor_id = role[:actor_id]
  r.save
end






