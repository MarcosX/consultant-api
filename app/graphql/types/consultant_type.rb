Types::ConsultantType = GraphQL::ObjectType.define do
  name 'Consultant'
  description 'Billable unit'

  field :name, !types.String
  field :staffing_office do
    type Types::OfficeType
    resolve -> (consultant, args, ctx) do
      consultant.staffing_office
    end
  end
  field :working_office do
    type Types::OfficeType
    resolve -> (consultant, args, ctx) do
      consultant.working_office
    end
  end
  field :home_office do
    type Types::OfficeType
    resolve -> (consultant, args, ctx) do
      consultant.home_office
    end
  end
  field :current_project do
    type types.String
    resolve -> (consultant, args, ctx) do
      "#{consultant.current_project.name}"
    end
  end
end
