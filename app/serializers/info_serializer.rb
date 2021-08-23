class InfoSerializer
  include JSONAPI::Serializer
  attributes :name, :tempo, :key, :tool_id
end
