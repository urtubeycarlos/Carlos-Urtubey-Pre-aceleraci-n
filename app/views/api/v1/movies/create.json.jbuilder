if @movie.persisted?
    json.id movie.id
    json.title movie.title
    json.image movie.image
    json.calification movie.calification
    json.characters movie.characters do |character|
        json.id character.id
        json.name character.name
        json.age character.age
        json.weight character.weight
        json.history character.history
        json.image character.image
    end
else
    json.error @movie.errors
    json.status :unprocessable_entity
end