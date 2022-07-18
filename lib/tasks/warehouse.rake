require './app/models/FactQuote.rb'
require './app/models/FactContact.rb'
require './app/models/FactElevator.rb'
require './app/models/DimCustomer.rb'
require 'http'

def every_so_many_seconds(seconds)
    last_tick = Time.now
    loop do
    sleep 0.1
    if Time.now - last_tick >= seconds
        last_tick += seconds
        yield
    end
    end
end

def random_elevator_status
    elevator_status_random = rand(3)
    random_status_elevator = ""
    if elevator_status_random == 0
        random_status_elevator = "Active"
    elsif elevator_status_random == 1
        random_status_elevator = "Inactive"
    elsif elevator_status_random == 2 
        random_status_elevator = "Intervention"
    end
    return random_status_elevator
end


# def get_channel
#     HTTP.get('https://slack.com/api/conversations.list')
#     HTTP.auth(ENV["SLACK_AUTH_TOKEN"])
# end

namespace :warehouse do
    desc "Transfer data from MySql tables"
    task seed_wh: :environment do
        PgBase.connection.execute("TRUNCATE fact_quotes, fact_contacts, fact_elevators, dim_customers RESTART IDENTITY")
            User.all.each do |user|
                Quote.all.each do |quote|
                    if quote.user_id == user.id
                        FactQuote.create!(
                            quote_id: quote.id,
                            creation_date: quote.created_at,       
                            company_name:  user.company_name, #?
                            email: user.email, #??
                            NbElevator: quote.amount_of_elevators
                        )
                    end
                end
            end  

         
            Lead.all.each do |lead|
                FactContact.create!(
                    contactId: lead.name,
                    creation_date: lead.created_at,
                    company_name: lead.company_name,
                    email: lead.email,
                    project_name: lead.project_name
                )
            end

                Customer.all.each do |customer|
                    Address.all.each do |address| 
                        if address.customer_id == customer.id
                        Building.all.each do |building| 
                            if building.customer_id == customer.id
                            Battery.all.each do |battery|
                                if battery.building_id == building.id
                                Column.all.each do |column|
                                    if column.battery_id == battery.id
                                    Elevator.all.each do |elevator|
                                        if elevator.column_id == column.id
                                            FactElevator.create!(
                                                serial_number: elevator.serial_number,
                                                date_of_commissioning: elevator.elevator_commission_date,
                                                building_id: building.id,
                                                building_city: address.city,
                                                customer_id: customer.id
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
                puts "Done Seeding Fact Elevators"

                Customer.all.each do |customer|
                    Address.all.each do |address|
                        if address.customer_id == customer.id
                            DimCustomer.create!(
                                creation_date: customer.customer_created_date,
                                company_name: customer.company_name,
                                company_contact_name: customer.contact_name,
                                email: customer.email,
                                NbElevators: customer.number_of_elevators,
                                customer_city: address.city
                            )
                        end
                end
            end    

    end

    task elevator_timer: :environment do

        every_so_many_seconds(5) do
            random_status_local = random_elevator_status
            how_many_elevators = Elevator.maximum(:id)
            @elevator = Elevator.find(rand(1..how_many_elevators))
            og_status = @elevator[:elevator_status]
                if @elevator[:elevator_status] != random_status_local
                    @elevator.update(elevator_status: random_status_local)
                    puts "updated an elvator status"
                    HTTP.headers(:accept => "application/json").auth(ENV["SLACK_AUTH_TOKEN"]).post('https://slack.com/api/chat.postMessage', :json => {
                        :channel => "elevator_operations",
                        :text => "The Elevator #{@elevator[:id]} with Serial Number #{@elevator[:serial_number]} changed status from #{og_status} to #{@elevator[:elevator_status]}"
                    })
                    end
        end

    end
end
