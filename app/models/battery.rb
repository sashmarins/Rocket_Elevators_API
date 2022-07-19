class Battery < ApplicationRecord
    belongs_to :building
    require './app/models/FactIntervention.rb'
    after_create :check_battery_intervention
    after_update :check_battery_intervention 

    def check_battery_intervention
        Customer.all.each do |customer|
                Building.all.each do |building| 
                    if building.customer_id == customer.id
                        Battery.all.each do |battery|
                            if battery.battery_status == "Intervention" && battery.building_id == building.id && self.id == battery.id
                                        FactIntervention.create!(
                                            employee_id: building.employee_id,
                                            building_id: building.id,
                                            battery_id: battery.id,
                                            column_id: nil,
                                            elevator_id: nil,
                                            intervention_started: battery.updated_at,
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
