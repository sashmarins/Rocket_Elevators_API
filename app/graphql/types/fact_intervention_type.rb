# frozen_string_literal: true

module Types
  class FactInterventionType < Types::BaseObject
    field :id, ID, null: false
    field :employee_id, Integer
    field :building_id, Integer
    field :battery_id, Integer
    field :column_id, Integer
    field :elevator_id, Integer
    field :intervention_started, GraphQL::Types::ISO8601DateTime
    field :intervention_ended, GraphQL::Types::ISO8601DateTime
    field :intervention_result, String
    field :intervention_report, String
    field :intervention_status, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
