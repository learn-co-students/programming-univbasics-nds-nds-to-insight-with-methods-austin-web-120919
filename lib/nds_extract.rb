require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length do
    gross_total = 0
    director_name = nds[director_index][:name]
    gross_total += gross_for_director(nds[director_index])
    result[director_name] = gross_total
    director_index += 1
  end
  return result
  nil
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0
  gross_total = 0
  while movie_index < director_data[:movies].length do
    gross_total += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  return gross_total
end
