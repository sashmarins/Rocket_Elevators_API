# frozen_string_literal: true

module Types
  class CustomerType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer
    field :company_name, String
    field :number_of_elevators, Integer
    field :customer_created_date, String
    field :contact_name, String
    field :phone_number, String
    field :email, String
    field :company_description, String
    field :service_tech_name, String
    field :service_tech_phone, Integer
    field :service_tech_email, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
