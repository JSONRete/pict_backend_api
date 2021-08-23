class InfoSerializer
  include JSONAPI::Serializer
  belongs_to :tool
  attributes :name, :tempo, :key, :tool_id
end
