if @character.persisted?
    json.id @character.id
    json.name @character.name
    json.age @character.age
    json.weight @character.weight
    json.history @character.history
    json.image @character.image
    json.movies @character.movies.pluck(:id)
    json.series @character.series.pluck(:id)
else
    json.error @genre.errors
    json.status :unprocessable_entity
end