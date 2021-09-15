if @character.errors.any?
    json.error @character.errors
    json.status :unprocessable_entity
else
    json.name @character.name
    json.age @character.age
    json.weight @character.weight
    json.history @character.history
    json.image @character.image
    json.movies @character.movies.pluck(:id)
    json.series @character.series.pluck(:id)
end
