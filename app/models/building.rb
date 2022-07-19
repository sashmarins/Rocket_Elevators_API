class Building < ApplicationRecord
    belongs_to :customer
    require './app/models/FactIntervention.rb'
    after_create :check_building_intervention
    after_update :check_building_intervention 

    def check_building_intervention
        Customer.all.each do |customer|
                Building.all.each do |building| 
                    if building.customer_id == customer.id && building.status == "Intervention" && building.id == self.id
                                        FactIntervention.create!(
                                            employee_id: building.employee_id,
                                            building_id: building.id,
                                            battery_id: nil,
                                            column_id: nil,
                                            elevator_id: nil,
                                            intervention_started: building.updated_at,
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
