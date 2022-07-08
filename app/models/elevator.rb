class Elevator < ApplicationRecord
    belongs_to :column
    include RailsAdminCharts

end
