class Building < ApplicationRecord
    belongs_to :customer
    include RailsAdminCharts

end
