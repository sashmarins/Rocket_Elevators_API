class Quote < ApplicationRecord
    include RailsAdminCharts
   belongs_to :user
end
