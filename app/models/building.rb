class Building < ApplicationRecord
    belongs_to :customer
    require './app/models/fact_intervention.rb'
    after_create :check_building_intervention
    after_update :check_building_intervention 
    before_update :finish_intervention_building

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

                    def finish_intervention_building
                        current_time = DateTime.now
                        result = ["Success", "Failure", "Incomplete"].sample(1)
                        FactIntervention.all.each do |intervention|
                            if intervention.building_id == self.id && intervention.intervention_ended == nil && self.status != "Intervention"
                                intervention.update(intervention_ended: current_time.strftime, intervention_status: "Intervened", intervention_result: result)
                            end
                        end
                    end

end
