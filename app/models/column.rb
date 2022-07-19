class Column < ApplicationRecord
    belongs_to :battery
    require './app/models/FactIntervention.rb'
    after_create :check_column_intervention
    after_update :check_column_intervention 

    def check_column_intervention
        Customer.all.each do |customer|
                Building.all.each do |building| 
                    if building.customer_id == customer.id
                        Battery.all.each do |battery|
                            if battery.building_id == building.id
                                Column.all.each do |column|
                                    if column.column_status == "Intervention" && column.battery_id == battery.id && self.id == column.id
                                        FactIntervention.create!(
                                            employee_id: building.employee_id,
                                            building_id: building.id,
                                            battery_id: battery.id,
                                            column_id: column.id,
                                            elevator_id: nil,
                                            intervention_started: column.updated_at,
                                            intervention_ended: nil,
                                            intervention_result: nil,
                                            intervention_report: Faker::Books::Dune.quote,
                                            intervention_status: "In Progress"
                                    )
                                end
                            end
                        end
                    end
                end
            end
        end
    end

end
