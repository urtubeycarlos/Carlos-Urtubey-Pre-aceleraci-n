if @genre
    json.name @genre.name
    json.image @genre.image
else
    @genre.to_s
end