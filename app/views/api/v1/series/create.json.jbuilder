if @serie.persisted?
    json.id serie.id
    json.title serie.title
    json.image serie.image
    json.calification serie.calification
    json.characters serie.characters do |character|
        json.id character.id
        json.name character.name
        json.age character.age
        json.weight character.weight
        json.history character.history
        json.image character.image
    end
else
    json.error @serie.errors
    json.status :unprocessable_entity
end