if @genre.errors.any?
    json.error @genre.errors
    json.status :unprocessable_entity
else
    json.id @genre.id
    json.name @genre.name
    json.image @genre.image
end
