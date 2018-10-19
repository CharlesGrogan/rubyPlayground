movies = {
  Snatch: 5,
  American_Pie: 4,
  Titanic: 2
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.intern].nil?
    puts "what's the rating? (Type a number 0 to 5)"
    rating = gets.chomp
    movies[titles.intern] = rating.to_i
    puts "#{title} has been added wityh a rating of #{rating}."
  else
    puts "That movie already exists! It's rating is  #{movie[title.intern]}."
  end

  when 'update'
    puts "What movie do you want to update?"
    title = get.chomp
    if movies[title.intern]nil?
    puts "Movie was not found!"
  else
    puts "what's the rating? (Type a number 0 to 5)"
    rating = gets.chomp
    movies[titles.intern] = rating.to_i
    puts "#{title} has been added wityh a rating of #{rating}."
  else
    puts "That movie already exists! It's rating is  #{movie[title.intern]}."
  end

when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie would youlike to delete?"
  title = gets.chomp
  if movie[title.intern].nil?
    puts "Movie not found!"
  else
    movies.delete(title.intern)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end