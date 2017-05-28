ConsultantType = GraphQL::ObjectType.define do
  name 'Consultant'
  description 'Billable unit'

  field :name, !types.String
  field :staffing_office do
    type types.String
    resolve -> (consultant, args, ctx) do
      "#{consultant.staffing_office.name}"
    end
  end
  field :working_office do
    type types.String
    resolve -> (consultant, args, ctx) do
      "#{consultant.working_office.name}"
    end
  end
  field :home_office do
    type types.String
    resolve -> (consultant, args, ctx) do
      "#{consultant.home_office.name}"
    end
  end
  field :current_project do
    type types.String
    resolve -> (consultant, args, ctx) do
      "#{consultant.current_project.name}"
    end
  end
end

Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'This is where it all begins'
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :consultant do
    type ConsultantType
    description 'Consultant with the name'
    argument :name, !types.String
    resolve -> (root, args, ctx) { Consultant.find_by_name(args[:name])  }
  end
end
