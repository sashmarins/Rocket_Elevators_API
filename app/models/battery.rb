class Battery < ApplicationRecord
    belongs_to :building
    require './app/models/fact_intervention.rb'
    after_create :check_battery_intervention
    after_update :check_battery_intervention 
    before_update :finish_intervention_battery

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

            def finish_intervention_battery
                current_time = DateTime.now
                result = ["Success", "Failure", "Incomplete"].sample(1)
                FactIntervention.all.each do |intervention|
                    if intervention.battery_id == self.id && intervention.intervention_ended == nil && self.battery_status != "Intervention"
                        intervention.update(intervention_ended: current_time.strftime, intervention_status: "Intervened", intervention_result: result)
                    end
                end
            end

end
