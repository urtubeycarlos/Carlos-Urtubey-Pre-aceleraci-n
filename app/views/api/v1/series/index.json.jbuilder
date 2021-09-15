json.movies @series do |serie|
    json.id serie.id
    json.title serie.title
    json.image serie.image
    json.created_at serie.created_at
end