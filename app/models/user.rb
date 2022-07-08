class User < ApplicationRecord
  has_many :quote
  include RailsAdminCharts

  def self.graph_data since=30.days.ago
    [
      {
          name: 'Admin Users',
          pointInterval: point_interval = 1.day * 1000,
          pointStart: start_point = since.to_i * 1000,
          data: self.where(type: 'Admin').delta_records_since(since)
      },
      {
          name: 'Standard Users',
          pointInterval: point_interval,
          pointStart: start_point,
          data: self.where(type: nil).delta_records_since(since)
      }
    ]
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         def admin? 
          self.is_admin == true
        end
end
