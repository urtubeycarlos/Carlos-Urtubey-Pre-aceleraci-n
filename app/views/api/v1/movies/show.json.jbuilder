if @movie
    json.title @movie.title
    json.image @movie.image
    json.calification @movie.calification
    json.genre @movie.genre.name
else
    @movie.to_s
end