if @movie.errors.any?
    json.error @movie.errors
    json.status :unprocessable_entity
else
    json.title @movie.title
    json.image @movie.image
    json.calification @movie.calification
    json.genre_id @movie.genre_id
end