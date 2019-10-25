require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
  directors_hash = {}
  nds.length.times do |i|
    directors_gross = gross_for_director(nds[i])
    directors_name = nds[i][:name]
    directors_hash[directors_name] = directors_gross
  end
  
  directors_hash
  
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  director_gross = 0
  number_of_movies = director_data[:movies].length
  
  director_data[:movies].length.times do |i|
    gross_of_movie = director_data[:movies][i][:worldwide_gross]
    director_gross += gross_of_movie
  end 
  
  director_gross
  
end
