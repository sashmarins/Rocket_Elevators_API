# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

user1 = User.create!(is_admin: true, email: 'mathieu.houde@codeboxx.biz', company_name: 'Codeboxx', encrypted_password: 'password123', password: 'password123', password_confirmation: 'password123') 
user2 = User.create!(is_admin: true, email: 'patrick.thibault@codeboxx.biz', company_name: 'Codeboxx', encrypted_password: 'password123', password: 'password123', password_confirmation: 'password123') 
user3 = User.create!(is_admin: true, email: 'francis.patry-jessop@codeboxx.biz', company_name: 'Codeboxx', encrypted_password: 'password123', password: 'password123', password_confirmation: 'password123') 
user4 = User.create!(is_admin: true, email: 'david.amyot@codeboxx.biz', company_name: 'Codeboxx', encrypted_password: 'password123', password: 'password123', password_confirmation: 'password123')
user5 = User.create!(is_admin: true, email: 'marie-eve.goupil@codeboxx.biz', company_name: 'Codeboxx', encrypted_password: 'password123', password: 'password123', password_confirmation: 'password123')
user6 = User.create!(is_admin: true, email: 'francois.boivin@codeboxx.biz', company_name: 'Codeboxx', encrypted_password: 'password123', password: 'password123', password_confirmation: 'password123')
user7 = User.create!(is_admin: true, email: 'timothy.wever@codeboxx.biz', company_name: 'Codeboxx', encrypted_password: 'password123', password: 'password123', password_confirmation: 'password123')
user8 = User.create!(is_admin: true, email: 'kiril.kleinerman@codeboxx.biz', company_name: 'Codeboxx', encrypted_password: 'password123', password: 'password123', password_confirmation: 'password123')
user9 = User.create!(is_admin: true, email: 'felicia.hartono@codeboxx.biz', company_name: 'Codeboxx', encrypted_password: 'password123', password: 'password123', password_confirmation: 'password123')
user10 = User.create!(is_admin: true, email: 'eileen.ai@codeboxx.biz', company_name: 'Codeboxx', encrypted_password: 'password123', password: 'password123', password_confirmation: 'password123')

# employee1 = user1.Employee.create!(first_name: 'Mathieu', last_name: 'Houde', title: 'Gopher')
# employee2 = user2.Employee.create!(first_name: 'Patrick', last_name: 'Thibault', title: 'Maximalist')
# employee3 = user3.Employee.create!(first_name: 'Francis', last_name: 'Patry-Jessop', title: 'Captain')
# employee4 = user4.Employee.create!(first_name: 'David', last_name: 'Amyot', title: 'The Man')
# employee5 = user5.Employee.create!(first_name: 'Marie-Ève', last_name: 'Goupil', title: 'AI Master')
# employee6 = user6.Employee.create!(first_name: 'François', last_name: 'Boivin', title: 'The Tank')
# employee7 = user7.Employee.create!(first_name: 'Timothy', last_name: 'Wever', title: 'Beard Whisperer')
# employee8 = user8.Employee.create!(first_name: 'Kiril', last_name: 'Kleinerman', title: 'I <3 Winnipeg')
# employee9 = user9.Employee.create!(first_name: 'Felicia', last_name: 'Hartono', title: 'Scrums are too early')
# employee10 = user10.Employee.create!(first_name: 'Eileen', last_name: 'Ai', title: 'They really are.')

# def create_employee 
#     Employee.create!(employee_params)
# end

# private 
#     def employee_params
#         params.fetch( :employee, {})
#     end

Employee.create!(:user_id => 1, first_name: 'Mathieu', last_name: 'Houde', title: 'Gopher')
Employee.create!(:user_id => 2, first_name: 'Patrick', last_name: 'Thibault', title: 'Maximalist')
Employee.create!(:user_id => 3, first_name: 'Francis', last_name: 'Patry-Jessop', title: 'Captain')
Employee.create!(:user_id => 4, first_name: 'David', last_name: 'Amyot', title: 'The Man')
Employee.create!(:user_id => 5, first_name: 'Marie-Ève', last_name: 'Goupil', title: 'AI Master')
Employee.create!(:user_id => 6, first_name: 'François', last_name: 'Boivin', title: 'The Tank')
Employee.create!(:user_id => 7, first_name: 'Timothy', last_name: 'Wever', title: 'Beard Whisperer')
Employee.create!(:user_id => 8, first_name: 'Kiril', last_name: 'Kleinerman', title: 'I <3 Winnipeg')
Employee.create!(:user_id => 9, first_name: 'Felicia', last_name: 'Hartono', title: 'Scrums are too early')
Employee.create!(:user_id => 10, first_name: 'Eileen', last_name: 'Ai', title: 'They really are.')
# User.delete_all

require_relative '../lib/populator_fix.rb'

Lead.populate 500 do |l|
    l.name = Faker::FunnyName.name
    l.company_name = Faker::Company.name
    l.email = Faker::Internet.email
    l.phone = Faker::PhoneNumber.cell_phone
    l.project_name = Faker::Book.title
    l.project_description = Faker::Marketing.buzzwords
    l.department = Faker::Job.field
    l.message = Faker::IndustrySegments.industry
    l.attachment =  Faker::Company.logo
    # date time created & updated
end

# Address.populate 500 do |a|
#     # address_type
#     # address status
#     #entity
#     a.address
# end

# Customers.populate 500 do |cu|
#     # user id
#     # address id
#     cu.company_name = Faker::Company.name
#     #adress
#     # customer created date
#     cu.contact_name = Faker::FunnyName.name

# end

Buildings.populate 500 do |bu|
    #customer id
    # Address of the building (In the address table)
    bu.building_admin_name = Faker::Name.name 
    bu.building_admin_email = Faker::Internet.free_email
    bu.building_admin_phone = Faker::PhoneNumber.cell_phone
    bu.building_tech_name = Faker::Name.name
    bu.building_tech_email = Faker::Internet.free_email
    bu.building_tech_phone = Faker::PhoneNumber.cell_phone
    # created_at
    # updated_at
    # customer_id index_buildings_on_customer_id
end

BuildingDetails.populate 500 do |bud|
    # bud.building_id
    # bud.created_at
    # bud.updated_at
    # index_batteries_on_building_id
end

Batteries.populate 500 do |ba|
    # ba.building_id
    # ba.building_type
    # battery_status
    # date_of_commission
    # last_inspection_date
    # operations_certificate
    ba.info = Faker::Quote.famous_last_words
    ba.notes = Faker::Quote.matz
    # created_at
    # updated_at
    # index_batteries_on_building_id
end

Columns.populate 500 do |co|
    # co.battery_id
    # number_of_floors_served
    # column_status
    co.info = Faker::Quote.famous_last_words
    co.notes = Faker::Quote.matz
    # created_at
    # updated_at
    # index_columns_on_battery_id
end

Elevators.populate 500 do |e|
    # e.column_id
    e.serial_number = Faker::IDNumber.chilean_id
    # elevator_model
    # elevator_status
    # elevator_commission_date
    # elevator_last_inspection_date
end



