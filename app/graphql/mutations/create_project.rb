# class Mutations::CreateProject < Mutations::BaseMutation
#   argument :title, String, required: true

#   field :project, Types::Project, null: true
#   field :errors, [String], null: true

#   def resolve(title:)
#     project = Project.new(user_id: context[:current_user].id, title: title)

#     if project.save
#       { project: project, errors: nil }
#     else
#       { errors: project.errors.full_messages,
#         project: nil}
#     end
#   end

# end

