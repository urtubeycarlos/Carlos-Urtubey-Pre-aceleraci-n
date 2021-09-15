json.movies @movies do |movie|
    json.id movie.id
    json.title movie.title
    json.image movie.image
    json.created_at movie.created_at
end