def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  row_index = 0
  gross = {}

  while row_index < nds.length do
    column_index = 0
    dir_gross = 0
    director = nds[row_index][:name]
    while column_index < nds[row_index][:movies].length do
      dir_gross += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
    end
    gross.store(director,dir_gross)
    row_index += 1
  end
  return gross
end
