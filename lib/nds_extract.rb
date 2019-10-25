require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  director_gross = 0
  number_of_movies = director_data[:movies].length
  director_data[:movies].length.times do
    gross_of_movie = director_data[:movies][moviecounter][:worldwide_gross]
    director_gross += gross_of_movie
    moviecounter += 1
  end 
  
  return director_gross
  
end
