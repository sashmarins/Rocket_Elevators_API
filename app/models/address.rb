class Address < ApplicationRecord
    include RailsAdminCharts

    belongs_to :customer, optional: true
end
