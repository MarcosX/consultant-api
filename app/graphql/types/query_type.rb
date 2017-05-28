Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'This is where it all begins'
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :consultant do
    type Types::ConsultantType
    description 'Consultant with the name'
    argument :name, !types.String
    resolve -> (root, args, ctx) { Consultant.find_by_name(args[:name])  }
  end
end
