class Battery < ApplicationRecord
    belongs_to :building
    include RailsAdminCharts

end
