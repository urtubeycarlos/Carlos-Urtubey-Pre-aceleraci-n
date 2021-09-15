if @genre.persisted?
    json.name @genre.name
    json.image @genre.image
else
    json.error @genre.errors
    json.status :unprocessable_entity
end