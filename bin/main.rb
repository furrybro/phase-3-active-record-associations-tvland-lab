require_relative "../config/environment.rb"

peter = Actor.create(first_name: "Peter", last_name: "Dinklage")
thrones = Show.create(name: "Game of Thrones")
tyrion = Character.create(name: "Tyrion Lannister", actor_id: peter.id, show_id: thrones.id, catchphrase: "this is a catchphrase")

peter_shows = peter.shows.map do |show|
    show.name
    end

puts peter_shows