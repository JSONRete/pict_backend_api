class ToolSerializer
  include JSONAPI::Serializer
  attributes :name
  has_many :infos
end
