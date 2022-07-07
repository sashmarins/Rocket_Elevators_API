require '/Users/maksymkryvoshlyk/Desktop/SourceControl/Rocket_Elevators_Information_System/app/models/FactQuote.rb'
require '/Users/maksymkryvoshlyk/Desktop/SourceControl/Rocket_Elevators_Information_System/app/models/FactContact.rb'


namespace :warehouse do
    desc "Transfer data from MySql tables"
    task seed_wh: :environment do
        PgBase.connection.execute("TRUNCATE fact_quotes, fact_contacts RESTART IDENTITY")
            User.all.each do |user|
                Quote.all.each do |quote|
                    FactQuote.create!(
                        quote_id: quote.id,
                        creation_date: quote.created_at,       
                        company_name:  user.company_name, #??
                        email: user.email, #??
                        NbElevator: quote.amount_of_elevators
                    )
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

        #     Elevator.all.each do |elevator|
        #         FactElevator.create!(
        #             serial_number: elevator.serial_number,
        #             date_of_commissioning: elevator.elevator_commission_date,
        #             building_id: #NESTED 
        #             building_city: #NESTED
        #             customer_id: #NESTED
        #         )
        #     end

        #     Customer.all.each do |customer|
        #         DimCustomer.create!(
        #             creation_date: customer.customer_created_date,
        #             company_name: customer.company_name,
        #             company_contact_name: customer.contact_name,
        #             email: customer.email,
        #             NbElevators: #???
        #             customer_city: #???
        #         )
        # end    

    end
end
