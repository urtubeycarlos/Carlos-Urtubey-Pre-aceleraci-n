if @movie.destroyed?
    json.id @movie.id
    json.title @movie.title
    json.image @movie.image
    json.calification @movie.calification
else
    json.error @movie.errors
    json.status :unprocessable_entity
end