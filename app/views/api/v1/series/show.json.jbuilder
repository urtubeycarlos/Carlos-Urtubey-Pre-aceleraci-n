if @serie
    json.title @serie.title
    json.image @serie.image
    json.calification @serie.calification
    json.genre @serie.genre.name
else
    serie.to_s
end