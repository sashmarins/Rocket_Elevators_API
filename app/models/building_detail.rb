class BuildingDetail < ApplicationRecord
    belongs_to :building
    include RailsAdminCharts

end
