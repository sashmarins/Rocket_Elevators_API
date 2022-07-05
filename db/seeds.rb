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

employee1 = user1.create_employee!(first_name: 'Mathieu', last_name: 'Houde', title: 'Gopher') #example

Employee.create!(:user_id => 1, first_name: 'Mathieu', last_name: 'Houde', title: 'Gopher')
Employee.create!(user_id: 2, first_name: 'Patrick', last_name: 'Thibault', title: 'Maximalist')
Employee.create!(user_id: 3, first_name: 'Francis', last_name: 'Patry-Jessop', title: 'Captain')
Employee.create!(user_id: 4, first_name: 'David', last_name: 'Amyot', title: 'The Man')
Employee.create!(user_id: 5, first_name: 'Marie-Ève', last_name: 'Goupil', title: 'AI Master')
Employee.create!(user_id: 6, first_name: 'François', last_name: 'Boivin', title: 'The Tank')
Employee.create!(user_id: 7, first_name: 'Timothy', last_name: 'Wever', title: 'Beard Whisperer')
Employee.create!(user_id: 8, first_name: 'Kiril', last_name: 'Kleinerman', title: 'I <3 Winnipeg')
Employee.create!(user_id: 9, first_name: 'Felicia', last_name: 'Hartono', title: 'Scrums are too early')
Employee.create!(user_id: 10, first_name: 'Eileen', last_name: 'Ai', title: 'They really are.')
# User.delete_all

