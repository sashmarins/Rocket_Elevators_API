module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    # include GraphQL::Types::Relay::HasNodeField
    # include GraphQL::Types::Relay::HasNodesField

    field :buildings,
      [Types::BuildingType],
      null: false,
      description: "Returns a list of buildings registered in the database"

    def buildings 
      Building.all
    end

    field :interventions,
      [Types::FactInterventionType],
      null: false,
      description: "puts a list of intervention facts registered in the database"

    def interventions
      FactIntervention.all
    end
  
  end
end
