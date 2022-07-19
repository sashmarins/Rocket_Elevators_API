class Elevator < ApplicationRecord
    belongs_to :column
    require 'twilio-ruby'
    require './app/models/FactIntervention.rb'
    after_create :check_intervention
    after_update :test, :check_intervention


    def test
        account_sid = ENV['account_sid']
        auth_token = ENV['auth_token']
        @client = Twilio::REST::Client.new account_sid, auth_token;
        if (self.elevator_status == "Intervention")
            message = @client.messages
            .create(
                from: '+19794757363',
                body: "The status of elevator #{self.serial_number} has been changed to 'Intervention'",
                to: '+18138178913'
            )
            puts message.sid
        end

    end

    def check_intervention
        Customer.all.each do |customer|
                Building.all.each do |building| 
                    if building.customer_id == customer.id
                    Battery.all.each do |battery|
                        if battery.building_id == building.id
                        Column.all.each do |column|
                            if column.battery_id == battery.id 
                                Elevator.all.each do |elevator|
                                    if elevator.elevator_status == "Intervention" && column.id == elevator.column_id && elevator.id == self.id
                                FactIntervention.create!(
                                    employee_id: building.employee_id,
                                    building_id: building.id,
                                    battery_id: battery.id,
                                    column_id: column.id,
                                    elevator_id: self.id,
                                    intervention_started: self.updated_at,
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
    end
end
        
    


