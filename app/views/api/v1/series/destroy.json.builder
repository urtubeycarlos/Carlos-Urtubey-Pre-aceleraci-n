if @serie.destroyed?
    json.id @serie.id
    json.title @serie.title
    json.image @serie.image
    json.calification @serie.calification
else
    json.error @serie.errors
    json.status :unprocessable_entity
end