class Employee < ApplicationRecord
    belongs_to :user
    include RailsAdminCharts

end
