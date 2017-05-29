Types::ProjectType = GraphQL::ObjectType.define do
  name "Project"
  field :name, types.String
  field :current_consultants, types[Types::ConsultantType]
  field :consultants, types[Types::ConsultantType]
end
