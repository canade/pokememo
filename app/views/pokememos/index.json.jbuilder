json.array!(@pokememos) do |pokememo|
  json.extract! pokememo, :id, :name, :item, :ability, :move1, :move2, :move3, :move4, :H, :A, :B, :C, :D, :S, :nature
  json.url pokememo_url(pokememo, format: :json)
end
