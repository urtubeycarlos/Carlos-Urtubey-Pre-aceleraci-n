if @serie.errors.any?
    json.error @serie.errors
    json.status :unprocessable_entity
else
    json.title @serie.title
    json.image @serie.image
    json.calification @serie.calification
    json.genre_id @serie.genre_id
end