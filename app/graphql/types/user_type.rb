module Types
  UserType = GraphQL::ObjectType.define do
    name 'User'

    # bang means it's required value so it has to exist.
    field :id, !types.ID

    # key has to be camel case because it returns json
    field :emailAddress, !types.String, property: :email
  end
end

# or

# Types::UserType = GraphQL::ObjectType.define do
# end
