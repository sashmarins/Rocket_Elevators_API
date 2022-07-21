# frozen_string_literal: true

module Types
  class BuildingType < Types::BaseObject
    field :id, ID, null: false
    field :customer_id, Integer, null: false
    field :employee_id, Integer
    field :address, String
    field :status, String
    field :building_admin_name, String
    field :building_admin_email, String
    field :building_admin_phone, String
    field :building_tech_name, String
    field :building_tech_email, String
    field :building_tech_phone, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :customer, Types::CustomerType, null: false
  end
end
