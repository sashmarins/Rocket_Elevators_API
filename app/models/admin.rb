class Admin < ApplicationRecord
    belongs_to :employee
    include RailsAdminCharts

end
