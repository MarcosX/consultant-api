Types::ProjectType = GraphQL::ObjectType.define do
  name "Project"
  field :name, types.String
  field :consultants, types[Types::ConsultantType]
end
