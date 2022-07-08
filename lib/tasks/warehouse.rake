require './app/models/FactQuote.rb'
require './app/models/FactContact.rb'
require './app/models/FactElevator.rb'
require './app/models/DimCustomer.rb'


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

            Address.all.each do |address| 
                Customer.all.each do |customer|
                        Building.all.each do |building| 
                            Battery.all.each do |battery|
                                Column.all.each do |column|
                                    Elevator.all.each do |elevator|
                                        if elevator.column_id == column.id && column.battery_id == battery.id && battery.building_id == building.id && building.customer_id == customer.id && customer.address_id == address.id
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
            Address.all.each do |address|
                Customer.all.each do |customer|
                    if customer.address_id == address.id
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
end
