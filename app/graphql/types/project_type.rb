Types::ProjectType = GraphQL::ObjectType.define do
  # this type is named `Project`
  name 'Project'

  # it has the following fields
  field :id, !types.ID
  field :title, !types.String do
    resolve ->(project, args, ctx) { project.user.email + '-' + project.title }
  end

  field :user, !Types::UserType
end