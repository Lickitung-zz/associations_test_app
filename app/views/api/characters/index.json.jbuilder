json.array! @characters.each do |character|
  json.id character.id
  json.name character.name
  json.lvl character.lvl
  json.class_type character.class_type
  json.user character.user
end