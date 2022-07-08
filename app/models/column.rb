class Column < ApplicationRecord
    belongs_to :battery
    include RailsAdminCharts

end
