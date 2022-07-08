class Customer < ApplicationRecord
    belongs_to :user, optional: true
    include RailsAdminCharts
end
