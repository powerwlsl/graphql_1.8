module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :me, Types::UserType, null: false, description: "the current user"
    def me
      context[:current_user]
    end

    # association
    field :project, Types::ProjectType, null: false, description: "first project"
    def project
      Project.first
    end

    # field :projects, [Types::ProjectType], null: false, description: "all projects"
    # def projects
    #   Project.all
    # end


    field :my_projects, [Types::ProjectType], null: false, description: "the projects of current user"
    def my_projects
      context[:current_user].projects
    end
  end
end




