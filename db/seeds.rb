# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command {or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([( name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

puts "seeding users"
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
puts "finished seeding users"
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
#         params.fetch( :employee, {))
#     end
puts "seeding employees"
Employee.create!(:user_id => user1.id, first_name: 'Mathieu', last_name: 'Houde', title: 'Gopher')
Employee.create!(:user_id => user2.id, first_name: 'Patrick', last_name: 'Thibault', title: 'Maximalist')
Employee.create!(:user_id => user3.id, first_name: 'Francis', last_name: 'Patry-Jessop', title: 'Captain')
Employee.create!(:user_id => user4.id, first_name: 'David', last_name: 'Amyot', title: 'The Man')
Employee.create!(:user_id => user5.id, first_name: 'Marie-Ève', last_name: 'Goupil', title: 'AI Master')
Employee.create!(:user_id => user6.id, first_name: 'François', last_name: 'Boivin', title: 'The Tank')
Employee.create!(:user_id => user7.id, first_name: 'Timothy', last_name: 'Wever', title: 'Beard Whisperer')
Employee.create!(:user_id => user8.id, first_name: 'Kiril', last_name: 'Kleinerman', title: 'I <3 Winnipeg')
Employee.create!(:user_id => user9.id, first_name: 'Felicia', last_name: 'Hartono', title: 'Scrums are too early')
Employee.create!(:user_id => user10.id, first_name: 'Eileen', last_name: 'Ai', title: 'They really are.')
puts "finshed seeding employees"
# User.delete_all

require_relative '../lib/populator_fix.rb'

def random_address_type
    address_type_random = rand(4)
    random_type_address = ""
    if address_type_random == 0
        random_type_address = "Business"
    elsif address_type_random == 1 
        random_type_address = "Billing"
    elsif address_type_random == 2
        random_type_address = "Shipping"
    elsif address_type_random == 3
        random_type_address = "Home"
    end
    # puts random_type_address
    return random_type_address
end

def random_elevator_type
    elevator_type_random = rand(3)
    random_type_elevator = ""
    if elevator_type_random == 0 
        random_type_elevator = "Standard"
    elsif elevator_type_random == 1
        random_type_elevator = "Premium"
    elsif elevator_type_random == 2 
        random_type_elevator = "Excelium"
    end
    return random_type_elevator
end

def random_battery_status
    battery_status_random = rand(4)
    random_status_battery = ""
    if battery_status_random == 0
        random_status_battery = "Active"
    elsif battery_status_random == 1
        random_status_battery = "Inactive"
    elsif battery_status_random == 2
        random_status_battery = "Intervention"
    elsif battery_status_random == 3 
        random_status_battery = "Active"
    end
    return random_status_battery
end

def random_elevator_status
    elevator_status_random = rand(3)
    random_status_elevator = ""
    if elevator_status_random == 0
        random_status_elevator = "Idle"
    elsif elevator_status_random == 1
        random_status_elevator == "Stopped"
    elsif elevator_status_random == 2 
        random_status_elevator == "Moving"
    end
    return random_status_elevator
end

def random_building_type
    building_type_random = rand(4)
    random_type_building = ""
    if building_type_random == 0
        random_type_building = "Residential"
    elsif building_type_random == 1
        random_type_building = "Commercial"
    elsif building_type_random == 2 
        random_type_building = "Corporate"
    elsif building_type_random == 3 
        random_type_building = "Hybrid"
    end
    return random_type_building
end



def random_address_status
    address_status_random = rand(2)
    random_status_address = ""
    if address_status_random == 0
        random_status_address = "Active"
    elsif address_status_random == 1
        random_status_address = "Inactive"
    end
    return random_status_address
end

def random_address_entity
    address_entity_random = rand(2)
    random_entity_address = ""
    if address_entity_random == 0
        random_entity_address = "Customer"
    elsif address_entity_random == 1
        random_entity_address = "Building"
    end
    return random_entity_address
end

def random_battery_certificate
    battery_certificate_random = rand(2)
    random_certificate_battery = ""
    if battery_certificate_random == 0
        random_certificate_battery = "Distributed"
    elsif battery_certificate_random == 1
        random_certificate_battery = "Pending"
    end
    return random_certificate_battery
end

def random_column_status
    column_status_random = rand(3)
    random_status_column = ""
    if column_status_random == 0
        random_status_column = "Online"
    elsif column_status_random == 1
        random_status_column = "Offline"
    elsif column_status_random == 2
        random_status_column = "In Maintenance"
    end
    return random_status_column
end


# def loopAddresses
    # for requiredAddress in addressList
    # end
# end

addressList = [
    {
        "address1": "1745 T Street Southeast",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20020",
        "coordinates": {
            "lat": 38.867033,
            "lng": -76.979235
        }
    },
    {
        "address1": "6007 Applegate Lane",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40219",
        "coordinates": {
            "lat": 38.1343013,
            "lng": -85.6498512
        }
    },
    {
        "address1": "560 Penstock Drive",
        "address2": "",
        "city": "Grass Valley",
        "state": "CA",
        "postalCode": "95945",
        "coordinates": {
            "lat": 39.213076,
            "lng": -121.077583
        }
    },
    {
        "address1": "150 Carter Street",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.76556000000001,
            "lng": -72.473091
        }
    },
    {
        "address1": "2721 Lindsay Avenue",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40206",
        "coordinates": {
            "lat": 38.263793,
            "lng": -85.700243
        }
    },
    {
        "address1": "18 Densmore Drive",
        "address2": "",
        "city": "Essex",
        "state": "VT",
        "postalCode": "05452",
        "coordinates": {
            "lat": 44.492953,
            "lng": -73.101883
        }
    },
    {
        "address1": "637 Britannia Drive",
        "address2": "",
        "city": "Vallejo",
        "state": "CA",
        "postalCode": "94591",
        "coordinates": {
            "lat": 38.10476999999999,
            "lng": -122.193849
        }
    },
    {
        "address1": "5601 West Crocus Drive",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85306",
        "coordinates": {
            "lat": 33.6152469,
            "lng": -112.179737
        }
    },
    {
        "address1": "5403 Illinois Avenue",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37209",
        "coordinates": {
            "lat": 36.157077,
            "lng": -86.853827
        }
    },
    {
        "address1": "8821 West Myrtle Avenue",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85305",
        "coordinates": {
            "lat": 33.5404296,
            "lng": -112.2488391
        }
    },
    {
        "address1": "2203 7th Street Road",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40208",
        "coordinates": {
            "lat": 38.218107,
            "lng": -85.779006
        }
    },
    {
        "address1": "6463 Vrain Street",
        "address2": "",
        "city": "Arvada",
        "state": "CO",
        "postalCode": "80003",
        "coordinates": {
            "lat": 39.814056,
            "lng": -105.046913
        }
    },
    {
        "address1": "87 Horseshoe Drive",
        "address2": "",
        "city": "West Windsor",
        "state": "VT",
        "postalCode": "05037",
        "coordinates": {
            "lat": 43.4731793,
            "lng": -72.4967532
        }
    },
    {
        "address1": "60 Desousa Drive",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.7409259,
            "lng": -72.5619104
        }
    },
    {
        "address1": "4 Old Colony Way",
        "address2": "",
        "city": "Yarmouth",
        "state": "MA",
        "postalCode": "02664",
        "coordinates": {
            "lat": 41.697168,
            "lng": -70.189992
        }
    },
    {
        "address1": "314 South 17th Street",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37206",
        "coordinates": {
            "lat": 36.1719075,
            "lng": -86.740228
        }
    },
    {
        "address1": "1649 Timberridge Court",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72704",
        "coordinates": {
            "lat": 36.084563,
            "lng": -94.206082
        }
    },
    {
        "address1": "5461 West Shades Valley Drive",
        "address2": "",
        "city": "Montgomery",
        "state": "AL",
        "postalCode": "36108",
        "coordinates": {
            "lat": 32.296422,
            "lng": -86.34280299999999
        }
    },
    {
        "address1": "629 Debbie Drive",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37076",
        "coordinates": {
            "lat": 36.208114,
            "lng": -86.58621199999999
        }
    },
    {
        "address1": "22572 Toreador Drive",
        "address2": "",
        "city": "Salinas",
        "state": "CA",
        "postalCode": "93908",
        "coordinates": {
            "lat": 36.602449,
            "lng": -121.699071
        }
    },
    {
        "address1": "3034 Mica Street",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72704",
        "coordinates": {
            "lat": 36.0807929,
            "lng": -94.2066449
        }
    },
    {
        "address1": "3729 East Mission Boulevard",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72703",
        "coordinates": {
            "lat": 36.0919353,
            "lng": -94.10654219999999
        }
    },
    {
        "address1": "5114 Greentree Drive",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37211",
        "coordinates": {
            "lat": 36.0618539,
            "lng": -86.738508
        }
    },
    {
        "address1": "3466 Southview Avenue",
        "address2": "",
        "city": "Montgomery",
        "state": "AL",
        "postalCode": "36111",
        "coordinates": {
            "lat": 32.341227,
            "lng": -86.2846859
        }
    },
    {
        "address1": "1513 Cathy Street",
        "address2": "",
        "city": "Savannah",
        "state": "GA",
        "postalCode": "31415",
        "coordinates": {
            "lat": 32.067416,
            "lng": -81.125331
        }
    },
    {
        "address1": "600 West 19th Avenue",
        "address2": "APT B",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99503",
        "coordinates": {
            "lat": 61.203115,
            "lng": -149.894107
        }
    },
    {
        "address1": "1208 Elkader Court North",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37013",
        "coordinates": {
            "lat": 36.080049,
            "lng": -86.60116099999999
        }
    },
    {
        "address1": "210 Green Road",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06042",
        "coordinates": {
            "lat": 41.7909099,
            "lng": -72.51195129999999
        }
    },
    {
        "address1": "49548 Road 200",
        "address2": "",
        "city": "O'Neals",
        "state": "CA",
        "postalCode": "93645",
        "coordinates": {
            "lat": 37.153463,
            "lng": -119.648192
        }
    },
    {
        "address1": "81 Seaton Place Northwest",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20001",
        "coordinates": {
            "lat": 38.9149499,
            "lng": -77.01170259999999
        }
    },
    {
        "address1": "1267 Martin Street",
        "address2": "#203",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37203",
        "coordinates": {
            "lat": 36.1404897,
            "lng": -86.7695179
        }
    },
    {
        "address1": "7431 Candace Way",
        "address2": "#1",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40214",
        "coordinates": {
            "lat": 38.142768,
            "lng": -85.7717132
        }
    },
    {
        "address1": "1407 Walden Court",
        "address2": "",
        "city": "Crofton",
        "state": "MD",
        "postalCode": "21114",
        "coordinates": {
            "lat": 39.019306,
            "lng": -76.660653
        }
    },
    {
        "address1": "5906 Milton Avenue",
        "address2": "",
        "city": "Deale",
        "state": "MD",
        "postalCode": "20751",
        "coordinates": {
            "lat": 38.784451,
            "lng": -76.54125499999999
        }
    },
    {
        "address1": "74 Springfield Street",
        "address2": "B",
        "city": "Agawam",
        "state": "MA",
        "postalCode": "01001",
        "coordinates": {
            "lat": 42.0894922,
            "lng": -72.6297558
        }
    },
    {
        "address1": "2905 Stonebridge Court",
        "address2": "",
        "city": "Norman",
        "state": "OK",
        "postalCode": "73071",
        "coordinates": {
            "lat": 35.183319,
            "lng": -97.40210499999999
        }
    },
    {
        "address1": "20930 Todd Valley Road",
        "address2": "",
        "city": "Foresthill",
        "state": "CA",
        "postalCode": "95631",
        "coordinates": {
            "lat": 38.989466,
            "lng": -120.883108
        }
    },
    {
        "address1": "5928 West Mauna Loa Lane",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85306",
        "coordinates": {
            "lat": 33.6204899,
            "lng": -112.18702
        }
    },
    {
        "address1": "802 Madison Street Northwest",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20011",
        "coordinates": {
            "lat": 38.9582381,
            "lng": -77.0244287
        }
    },
    {
        "address1": "2811 Battery Place Northwest",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20016",
        "coordinates": {
            "lat": 38.9256252,
            "lng": -77.0982646
        }
    },
    {
        "address1": "210 Lacross Lane",
        "address2": "",
        "city": "Westmore",
        "state": "VT",
        "postalCode": "05860",
        "coordinates": {
            "lat": 44.771005,
            "lng": -72.048664
        }
    },
    {
        "address1": "2010 Rising Hill Drive",
        "address2": "",
        "city": "Norman",
        "state": "OK",
        "postalCode": "73071",
        "coordinates": {
            "lat": 35.177281,
            "lng": -97.411869
        }
    },
    # {
    #     "address1": "388 East Main Street",
    #     "address2": "",
    #     "state": "VT",
    #     "postalCode": "05753",
    #     "coordinates": {
    #         "lat": 43.9727945,
    #         "lng": -73.1023187
    #     }
    # },
    # {
    #     "address1": "450 Kinhawk Drive",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37211",
    #     "coordinates": {
    #         "lat": 36.030927,
    #         "lng": -86.71949099999999
    #     }
    # },
    # {
    #     "address1": "131 Westerly Street",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06042",
    #     "coordinates": {
    #         "lat": 41.7906813,
    #         "lng": -72.53559729999999
    #     }
    # },
    # {
    #     "address1": "308 Woodleaf Court",
    #     "address2": "",
    #     "city": "Glen Burnie",
    #     "state": "MD",
    #     "postalCode": "21061",
    #     "coordinates": {
    #         "lat": 39.1425931,
    #         "lng": -76.6238441
    #     }
    # },
    # {
    #     "address1": "8502 Madrone Avenue",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40258",
    #     "coordinates": {
    #         "lat": 38.1286407,
    #         "lng": -85.8678042
    #     }
    # },
    # {
    #     "address1": "23 Sable Run Lane",
    #     "address2": "",
    #     "city": "Methuen",
    #     "state": "MA",
    #     "postalCode": "01844",
    #     "coordinates": {
    #         "lat": 42.759847,
    #         "lng": -71.157721
    #     }
    # },
    # {
    #     "address1": "716 Waller Road",
    #     "address2": "",
    #     "city": "Brentwood",
    #     "state": "TN",
    #     "postalCode": "37027",
    #     "coordinates": {
    #         "lat": 35.998892,
    #         "lng": -86.696529
    #     }
    # },
    # {
    #     "address1": "416 McIver Street",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37211",
    #     "coordinates": {
    #         "lat": 36.10436,
    #         "lng": -86.74411599999999
    #     }
    # },
    # {
    #     "address1": "1508 Massachusetts Avenue Southeast",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20003",
    #     "coordinates": {
    #         "lat": 38.887255,
    #         "lng": -76.98318499999999
    #     }
    # },
    # {
    #     "address1": "5615 West Villa Maria Drive",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85308",
    #     "coordinates": {
    #         "lat": 33.650988,
    #         "lng": -112.180624
    #     }
    # },
    # {
    #     "address1": "3162 Martin Luther King Junior Boulevard",
    #     "address2": "#2",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72704",
    #     "coordinates": {
    #         "lat": 36.05233310000001,
    #         "lng": -94.2056987
    #     }
    # },
    # {
    #     "address1": "5306 Ritchie Highway",
    #     "address2": "",
    #     "city": "Baltimore",
    #     "state": "MD",
    #     "postalCode": "21225",
    #     "coordinates": {
    #         "lat": 39.221978,
    #         "lng": -76.614183
    #     }
    # },
    # {
    #     "address1": "109 Summit Street",
    #     "address2": "",
    #     "city": "Burlington",
    #     "state": "VT",
    #     "postalCode": "05401",
    #     "coordinates": {
    #         "lat": 44.4729749,
    #         "lng": -73.2026566
    #     }
    # },
    # {
    #     "address1": "816 West 19th Avenue",
    #     "address2": "",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99503",
    #     "coordinates": {
    #         "lat": 61.203221,
    #         "lng": -149.898655
    #     }
    # },
    # {
    #     "address1": "172 Alburg Springs Road",
    #     "address2": "",
    #     "city": "Alburgh",
    #     "state": "VT",
    #     "postalCode": "05440",
    #     "coordinates": {
    #         "lat": 44.995827,
    #         "lng": -73.2201539
    #     }
    # },
    # {
    #     "address1": "159 Downey Drive",
    #     "address2": "A",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.7800126,
    #         "lng": -72.5754309
    #     }
    # },
    # {
    #     "address1": "125 John Street",
    #     "address2": "",
    #     "city": "Santa Cruz",
    #     "state": "CA",
    #     "postalCode": "95060",
    #     "coordinates": {
    #         "lat": 36.950901,
    #         "lng": -122.046881
    #     }
    # },
    # {
    #     "address1": "1101 Lotus Avenue",
    #     "address2": "",
    #     "city": "Glen Burnie",
    #     "state": "MD",
    #     "postalCode": "21061",
    #     "coordinates": {
    #         "lat": 39.191982,
    #         "lng": -76.6525659
    #     }
    # },
    # {
    #     "address1": "8376 Albacore Drive",
    #     "address2": "",
    #     "city": "Pasadena",
    #     "state": "MD",
    #     "postalCode": "21122",
    #     "coordinates": {
    #         "lat": 39.110409,
    #         "lng": -76.46565799999999
    #     }
    # },
    # {
    #     "address1": "491 Arabian Way",
    #     "address2": "",
    #     "city": "Grand Junction",
    #     "state": "CO",
    #     "postalCode": "81504",
    #     "coordinates": {
    #         "lat": 39.07548999999999,
    #         "lng": -108.474785
    #     }
    # },
    # {
    #     "address1": "12245 West 71st Place",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80004",
    #     "coordinates": {
    #         "lat": 39.8267078,
    #         "lng": -105.1366798
    #     }
    # },
    # {
    #     "address1": "80 North East Street",
    #     "address2": "#4",
    #     "city": "Holyoke",
    #     "state": "MA",
    #     "postalCode": "01040",
    #     "coordinates": {
    #         "lat": 42.2041219,
    #         "lng": -72.5977704
    #     }
    # },
    # {
    #     "address1": "4695 East Huntsville Road",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.0471975,
    #         "lng": -94.0946286
    #     }
    # },
    # {
    #     "address1": "310 Timrod Road",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.756758,
    #         "lng": -72.493501
    #     }
    # },
    # {
    #     "address1": "1364 Capri Drive",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32405",
    #     "coordinates": {
    #         "lat": 30.2207276,
    #         "lng": -85.6808795
    #     }
    # },
    # {
    #     "address1": "132 Laurel Green Court",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31419",
    #     "coordinates": {
    #         "lat": 32.0243075,
    #         "lng": -81.2468102
    #     }
    # },
    # {
    #     "address1": "6657 West Rose Garden Lane",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85308",
    #     "coordinates": {
    #         "lat": 33.676018,
    #         "lng": -112.201658
    #     }
    # },
    # {
    #     "address1": "519 West 75th Avenue",
    #     "address2": "#APT 000003",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99518",
    #     "coordinates": {
    #         "lat": 61.15288690000001,
    #         "lng": -149.889133
    #     }
    # },
    # {
    #     "address1": "31353 Santa Elena Way",
    #     "address2": "",
    #     "city": "Union City",
    #     "state": "CA",
    #     "postalCode": "94587",
    #     "coordinates": {
    #         "lat": 37.593981,
    #         "lng": -122.059762
    #     }
    # },
    # {
    #     "address1": "8398 West Denton Lane",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85305",
    #     "coordinates": {
    #         "lat": 33.515353,
    #         "lng": -112.240812
    #     }
    # },
    # {
    #     "address1": "700 Winston Place",
    #     "address2": "",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99504",
    #     "coordinates": {
    #         "lat": 61.215882,
    #         "lng": -149.737337
    #     }
    # },
    # {
    #     "address1": "232 Maine Avenue",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32401",
    #     "coordinates": {
    #         "lat": 30.1527033,
    #         "lng": -85.63207129999999
    #     }
    # },
    # {
    #     "address1": "1 Kempf Drive",
    #     "address2": "",
    #     "city": "Easton",
    #     "state": "MA",
    #     "postalCode": "02375",
    #     "coordinates": {
    #         "lat": 42.0505989,
    #         "lng": -71.08029379999999
    #     }
    # },
    # {
    #     "address1": "5811 Crossings Boulevard",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37013",
    #     "coordinates": {
    #         "lat": 36.0370847,
    #         "lng": -86.6413728
    #     }
    # },
    # {
    #     "address1": "5108 Franklin Street",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31405",
    #     "coordinates": {
    #         "lat": 32.034987,
    #         "lng": -81.121928
    #     }
    # },
    # {
    #     "address1": "913 Fallview Trail",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37211",
    #     "coordinates": {
    #         "lat": 36.02419100000001,
    #         "lng": -86.718305
    #     }
    # },
    # {
    #     "address1": "270 Chrissy's Court",
    #     "address2": "",
    #     "state": "VT",
    #     "postalCode": "05443",
    #     "coordinates": {
    #         "lat": 44.1710043,
    #         "lng": -73.1065617
    #     }
    # },
    # {
    #     "address1": "130 Old Route 103",
    #     "address2": "",
    #     "city": "Chester",
    #     "state": "VT",
    #     "postalCode": "05143",
    #     "coordinates": {
    #         "lat": 43.224335,
    #         "lng": -72.54227399999999
    #     }
    # },
    # {
    #     "address1": "10826 Pointe Royal Drive",
    #     "address2": "",
    #     "city": "Bakersfield",
    #     "state": "CA",
    #     "postalCode": "93311",
    #     "coordinates": {
    #         "lat": 35.2930007,
    #         "lng": -119.1225908
    #     }
    # },
    # {
    #     "address1": "74 Ranch Drive",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36109",
    #     "coordinates": {
    #         "lat": 32.383322,
    #         "lng": -86.235124
    #     }
    # },
    # {
    #     "address1": "6601 West Ocotillo Road",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85301",
    #     "coordinates": {
    #         "lat": 33.53433,
    #         "lng": -112.2011246
    #     }
    # },
    # {
    #     "address1": "19416 Barclay Road",
    #     "address2": "",
    #     "city": "Castro Valley",
    #     "state": "CA",
    #     "postalCode": "94546",
    #     "coordinates": {
    #         "lat": 37.70382,
    #         "lng": -122.091054
    #     }
    # },
    # {
    #     "address1": "1347 Blackwalnut Court",
    #     "address2": "",
    #     "city": "Annapolis",
    #     "state": "MD",
    #     "postalCode": "21403",
    #     "coordinates": {
    #         "lat": 38.936881,
    #         "lng": -76.475823
    #     }
    # },
    # {
    #     "address1": "1770 Colony Way",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72704",
    #     "coordinates": {
    #         "lat": 36.0867,
    #         "lng": -94.229754
    #     }
    # },
    # {
    #     "address1": "165 Saint John Street",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.7762171,
    #         "lng": -72.5410548
    #     }
    # },
    # {
    #     "address1": "2409 Research Boulevard",
    #     "address2": "",
    #     "city": "Fort Collins",
    #     "state": "CO",
    #     "postalCode": "80526",
    #     "coordinates": {
    #         "lat": 40.554586,
    #         "lng": -105.087852
    #     }
    # },
    # {
    #     "address1": "1903 Bashford Manor Lane",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40218",
    #     "coordinates": {
    #         "lat": 38.1977059,
    #         "lng": -85.675288
    #     }
    # },
    # {
    #     "address1": "8315 Surf Drive",
    #     "address2": "",
    #     "city": "Panama City Beach",
    #     "state": "FL",
    #     "postalCode": "32408",
    #     "coordinates": {
    #         "lat": 30.163458,
    #         "lng": -85.785449
    #     }
    # },
    # {
    #     "address1": "3301 Old Muldoon Road",
    #     "address2": "",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99504",
    #     "coordinates": {
    #         "lat": 61.1908348,
    #         "lng": -149.7340096
    #     }
    # },
    # {
    #     "address1": "8800 Cordell Circle",
    #     "address2": "#APT 000003",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99502",
    #     "coordinates": {
    #         "lat": 61.1409305,
    #         "lng": -149.9437822
    #     }
    # },
    # {
    #     "address1": "117 East Cook Avenue",
    #     "address2": "",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99501",
    #     "coordinates": {
    #         "lat": 61.230336,
    #         "lng": -149.883795
    #     }
    # },
    # {
    #     "address1": "6231 North 67th Avenue",
    #     "address2": "#241",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85301",
    #     "coordinates": {
    #         "lat": 33.5279666,
    #         "lng": -112.2022551
    #     }
    # },
    # {
    #     "address1": "8505 Waters Avenue",
    #     "address2": "#66",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31406",
    #     "coordinates": {
    #         "lat": 31.9901877,
    #         "lng": -81.1070672
    #     }
    # },
    # {
    #     "address1": "7 Underwood Place Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20012",
    #     "coordinates": {
    #         "lat": 38.969351,
    #         "lng": -77.009722
    #     }
    # },
    # {
    #     "address1": "21950 Arnold Center Road",
    #     "address2": "",
    #     "city": "Carson",
    #     "state": "CA",
    #     "postalCode": "90810",
    #     "coordinates": {
    #         "lat": 33.8272706,
    #         "lng": -118.2302826
    #     }
    # },
    # {
    #     "address1": "1427 South Carolina Avenue Southeast",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20003",
    #     "coordinates": {
    #         "lat": 38.886615,
    #         "lng": -76.9845349
    #     }
    # },
    # {
    #     "address1": "1420 Turtleback Trail",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32413",
    #     "coordinates": {
    #         "lat": 30.281084,
    #         "lng": -85.9677169
    #     }
    # },
    # {
    #     "address1": "6990 Pierson Street",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80004",
    #     "coordinates": {
    #         "lat": 39.824425,
    #         "lng": -105.122103
    #     }
    # },
    # {
    #     "address1": "376 North Williams Drive",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.067997,
    #         "lng": -94.142563
    #     }
    # },
    # {
    #     "address1": "3617 Menlo Court",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36116",
    #     "coordinates": {
    #         "lat": 32.307397,
    #         "lng": -86.26001099999999
    #     }
    # },
    # {
    #     "address1": "711 Parker Street",
    #     "address2": "",
    #     "city": "East Longmeadow",
    #     "state": "MA",
    #     "postalCode": "01028",
    #     "coordinates": {
    #         "lat": 42.082262,
    #         "lng": -72.488113
    #     }
    # },
    # {
    #     "address1": "8521 Crystal Street",
    #     "address2": "",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99502",
    #     "coordinates": {
    #         "lat": 61.143426,
    #         "lng": -149.94665
    #     }
    # },
    # {
    #     "address1": "1622 Edgar D Nixon Avenue",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36104",
    #     "coordinates": {
    #         "lat": 32.356384,
    #         "lng": -86.3128909
    #     }
    # },
    # {
    #     "address1": "1608 Gales Street Northeast",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20002",
    #     "coordinates": {
    #         "lat": 38.8985542,
    #         "lng": -76.9813444
    #     }
    # },
    # {
    #     "address1": "122 East Hayes Street",
    #     "address2": "",
    #     "city": "Norman",
    #     "state": "OK",
    #     "postalCode": "73069",
    #     "coordinates": {
    #         "lat": 35.232121,
    #         "lng": -97.445053
    #     }
    # },
    # {
    #     "address1": "5144 Cattail Court",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.041153,
    #         "lng": -94.087419
    #     }
    # },
    # {
    #     "address1": "131 Kent Drive",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06042",
    #     "coordinates": {
    #         "lat": 41.803084,
    #         "lng": -72.492786
    #     }
    # },
    # {
    #     "address1": "2313 Vegas Avenue",
    #     "address2": "",
    #     "city": "Castro Valley",
    #     "state": "CA",
    #     "postalCode": "94546",
    #     "coordinates": {
    #         "lat": 37.689189,
    #         "lng": -122.076775
    #     }
    # },
    # {
    #     "address1": "5420 Sunset Avenue",
    #     "address2": "",
    #     "city": "Panama City Beach",
    #     "state": "FL",
    #     "postalCode": "32408",
    #     "coordinates": {
    #         "lat": 30.145603,
    #         "lng": -85.755095
    #     }
    # },
    # {
    #     "address1": "242 North Ash Street",
    #     "address2": "",
    #     "city": "Fruita",
    #     "state": "CO",
    #     "postalCode": "81521",
    #     "coordinates": {
    #         "lat": 39.161544,
    #         "lng": -108.725378
    #     }
    # },
    # {
    #     "address1": "38676 Greenwich Circle",
    #     "address2": "",
    #     "city": "Fremont",
    #     "state": "CA",
    #     "postalCode": "94536",
    #     "coordinates": {
    #         "lat": 37.562256,
    #         "lng": -121.976451
    #     }
    # },
    # {
    #     "address1": "2426 East Onyx Trail",
    #     "address2": "#6",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.065707,
    #         "lng": -94.1276125
    #     }
    # },
    # {
    #     "address1": "110 Seaton Place Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20001",
    #     "coordinates": {
    #         "lat": 38.9146701,
    #         "lng": -77.01264680000001
    #     }
    # },
    # {
    #     "address1": "5385 Iris Street",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80002",
    #     "coordinates": {
    #         "lat": 39.794498,
    #         "lng": -105.106056
    #     }
    # },
    # {
    #     "address1": "5628 West Tonopah Drive",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85308",
    #     "coordinates": {
    #         "lat": 33.6710947,
    #         "lng": -112.1810955
    #     }
    # },
    # {
    #     "address1": "65 Bay Drive",
    #     "address2": "",
    #     "city": "Annapolis",
    #     "state": "MD",
    #     "postalCode": "21403",
    #     "coordinates": {
    #         "lat": 38.937493,
    #         "lng": -76.45638699999999
    #     }
    # },
    # {
    #     "address1": "7401 North 61st Drive",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85301",
    #     "coordinates": {
    #         "lat": 33.5450005,
    #         "lng": -112.191417
    #     }
    # },
    # {
    #     "address1": "8 Watkins Road",
    #     "address2": "",
    #     "state": "VT",
    #     "postalCode": "05468",
    #     "coordinates": {
    #         "lat": 44.6028809,
    #         "lng": -73.17689299999999
    #     }
    # },
    # {
    #     "address1": "2209 June Drive",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37214",
    #     "coordinates": {
    #         "lat": 36.16848,
    #         "lng": -86.695241
    #     }
    # },
    # {
    #     "address1": "1840 Nobel Place",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40216",
    #     "coordinates": {
    #         "lat": 38.198892,
    #         "lng": -85.8090129
    #     }
    # },
    # {
    #     "address1": "2622 Martin Luther King Junior Boulevard",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72704",
    #     "coordinates": {
    #         "lat": 36.053922,
    #         "lng": -94.1973008
    #     }
    # },
    # {
    #     "address1": "4 Glen Circle",
    #     "address2": "",
    #     "city": "Glen Burnie",
    #     "state": "MD",
    #     "postalCode": "21060",
    #     "coordinates": {
    #         "lat": 39.157751,
    #         "lng": -76.60633399999999
    #     }
    # },
    # {
    #     "address1": "7529 West 72nd Avenue",
    #     "address2": "#4",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80003",
    #     "coordinates": {
    #         "lat": 39.8276128,
    #         "lng": -105.0799305
    #     }
    # },
    # {
    #     "address1": "10996 Largo Drive",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31419",
    #     "coordinates": {
    #         "lat": 31.99178,
    #         "lng": -81.14366799999999
    #     }
    # },
    # {
    #     "address1": "2027 North Shannon Drive",
    #     "address2": "#5",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.0892622,
    #         "lng": -94.17333020000001
    #     }
    # },
    # {
    #     "address1": "154 Boca Lagoon Drive",
    #     "address2": "",
    #     "city": "Panama City Beach",
    #     "state": "FL",
    #     "postalCode": "32408",
    #     "coordinates": {
    #         "lat": 30.171012,
    #         "lng": -85.77501099999999
    #     }
    # },
    # {
    #     "address1": "3311 Wiley Post Loop",
    #     "address2": "",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99517",
    #     "coordinates": {
    #         "lat": 61.18686499999999,
    #         "lng": -149.946288
    #     }
    # },
    # {
    #     "address1": "5055 West 58th Avenue",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80002",
    #     "coordinates": {
    #         "lat": 39.8024171,
    #         "lng": -105.0505121
    #     }
    # },
    # {
    #     "address1": "3228 Chettenham Drive",
    #     "address2": "",
    #     "city": "Rancho Cordova",
    #     "state": "CA",
    #     "postalCode": "95670",
    #     "coordinates": {
    #         "lat": 38.577813,
    #         "lng": -121.301333
    #     }
    # },
    # {
    #     "address1": "1901 North Midwest Boulevard",
    #     "address2": "",
    #     "city": "Edmond",
    #     "state": "OK",
    #     "postalCode": "73034",
    #     "coordinates": {
    #         "lat": 35.67413,
    #         "lng": -97.39058399999999
    #     }
    # },
    # {
    #     "address1": "1536 North Main Street",
    #     "address2": "",
    #     "city": "Salinas",
    #     "state": "CA",
    #     "postalCode": "93906",
    #     "coordinates": {
    #         "lat": 36.7122208,
    #         "lng": -121.6522485
    #     }
    # },
    # {
    #     "address1": "33 Linscott Road",
    #     "address2": "",
    #     "city": "Hingham",
    #     "state": "MA",
    #     "postalCode": "02043",
    #     "coordinates": {
    #         "lat": 42.2257391,
    #         "lng": -70.8828675
    #     }
    # },
    # {
    #     "address1": "1732 27th Avenue",
    #     "address2": "",
    #     "city": "Oakland",
    #     "state": "CA",
    #     "postalCode": "94601",
    #     "coordinates": {
    #         "lat": 37.783431,
    #         "lng": -122.228238
    #     }
    # },
    # {
    #     "address1": "22 Gallatin Street Northeast",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20011",
    #     "coordinates": {
    #         "lat": 38.9526368,
    #         "lng": -77.0080993
    #     }
    # },
    # {
    #     "address1": "8125 Glynnwood Drive",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36117",
    #     "coordinates": {
    #         "lat": 32.341844,
    #         "lng": -86.14093
    #     }
    # },
    # {
    #     "address1": "2139 Glynnwood Drive",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31404",
    #     "coordinates": {
    #         "lat": 32.021538,
    #         "lng": -81.06860999999999
    #     }
    # },
    # {
    #     "address1": "14 School Street",
    #     "address2": "",
    #     "city": "Medway",
    #     "state": "MA",
    #     "postalCode": "02053",
    #     "coordinates": {
    #         "lat": 42.141711,
    #         "lng": -71.395014
    #     }
    # },
    # {
    #     "address1": "264 Crest Drive",
    #     "address2": "",
    #     "city": "Soldotna",
    #     "state": "AK",
    #     "postalCode": "99669",
    #     "coordinates": {
    #         "lat": 60.497608,
    #         "lng": -151.080848
    #     }
    # },
    # {
    #     "address1": "307 Joel Street",
    #     "address2": "",
    #     "city": "Pooler",
    #     "state": "GA",
    #     "postalCode": "31322",
    #     "coordinates": {
    #         "lat": 32.123265,
    #         "lng": -81.24991
    #     }
    # },
    # {
    #     "address1": "188 River Road",
    #     "address2": "",
    #     "city": "Essex",
    #     "state": "VT",
    #     "postalCode": "05452",
    #     "coordinates": {
    #         "lat": 44.478846,
    #         "lng": -73.058294
    #     }
    # },
    # {
    #     "address1": "1643 Oxford Street",
    #     "address2": "R C",
    #     "city": "Berkeley",
    #     "state": "CA",
    #     "postalCode": "94709",
    #     "coordinates": {
    #         "lat": 37.877894,
    #         "lng": -122.266436
    #     }
    # },
    # {
    #     "address1": "5545 Saddlewood Lane",
    #     "address2": "",
    #     "city": "Brentwood",
    #     "state": "TN",
    #     "postalCode": "37027",
    #     "coordinates": {
    #         "lat": 36.026888,
    #         "lng": -86.7576629
    #     }
    # },
    # {
    #     "address1": "26466 Mockingbird Lane",
    #     "address2": "",
    #     "city": "Hayward",
    #     "state": "CA",
    #     "postalCode": "94544",
    #     "coordinates": {
    #         "lat": 37.6410262,
    #         "lng": -122.0864272
    #     }
    # },
    # {
    #     "address1": "4840 Reservoir Road Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20007",
    #     "coordinates": {
    #         "lat": 38.9158933,
    #         "lng": -77.0962873
    #     }
    # },
    # {
    #     "address1": "599 Cambridge Street",
    #     "address2": "#303",
    #     "city": "Cambridge",
    #     "state": "MA",
    #     "postalCode": "02141",
    #     "coordinates": {
    #         "lat": 42.3720518,
    #         "lng": -71.08610949999999
    #     }
    # },
    # {
    #     "address1": "584 Rural Hill Road",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37217",
    #     "coordinates": {
    #         "lat": 36.089291,
    #         "lng": -86.621854
    #     }
    # },
    # {
    #     "address1": "10262 West 59th Avenue",
    #     "address2": "#1",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80004",
    #     "coordinates": {
    #         "lat": 39.803718,
    #         "lng": -105.111974
    #     }
    # },
    # {
    #     "address1": "945 South 5th Street",
    #     "address2": "#1020",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40203",
    #     "coordinates": {
    #         "lat": 38.2402351,
    #         "lng": -85.76031119999999
    #     }
    # },
    # {
    #     "address1": "2543 The Meadows",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36116",
    #     "coordinates": {
    #         "lat": 32.3463001,
    #         "lng": -86.2185382
    #     }
    # },
    # {
    #     "address1": "153 Atlantic Avenue",
    #     "address2": "#6",
    #     "city": "Salisbury",
    #     "state": "MA",
    #     "postalCode": "01952",
    #     "coordinates": {
    #         "lat": 42.8339101,
    #         "lng": -70.81575269999999
    #     }
    # },
    # {
    #     "address1": "9 Brooklyn Street",
    #     "address2": "",
    #     "state": "VT",
    #     "postalCode": "05488",
    #     "coordinates": {
    #         "lat": 44.924599,
    #         "lng": -73.12809399999999
    #     }
    # },
    # {
    #     "address1": "5722 8th Street Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20011",
    #     "coordinates": {
    #         "lat": 38.959305,
    #         "lng": -77.024463
    #     }
    # },
    # {
    #     "address1": "8700 Seaton Boulevard",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36116",
    #     "coordinates": {
    #         "lat": 32.3378676,
    #         "lng": -86.1731595
    #     }
    # },
    # {
    #     "address1": "1004 Bellflower Street",
    #     "address2": "",
    #     "city": "Livermore",
    #     "state": "CA",
    #     "postalCode": "94551",
    #     "coordinates": {
    #         "lat": 37.710745,
    #         "lng": -121.732765
    #     }
    # },
    # {
    #     "address1": "4738 Mallard Common",
    #     "address2": "",
    #     "city": "Fremont",
    #     "state": "CA",
    #     "postalCode": "94555",
    #     "coordinates": {
    #         "lat": 37.5666441,
    #         "lng": -122.0444344
    #     }
    # },
    # {
    #     "address1": "875 Latouche Street",
    #     "address2": "#APT 001010",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99501",
    #     "coordinates": {
    #         "lat": 61.2132529,
    #         "lng": -149.8608243
    #     }
    # },
    # {
    #     "address1": "4940 Fuller Road",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36110",
    #     "coordinates": {
    #         "lat": 32.42936,
    #         "lng": -86.21683519999999
    #     }
    # },
    # {
    #     "address1": "5754 Belleau Drive",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36117",
    #     "coordinates": {
    #         "lat": 32.394398,
    #         "lng": -86.203138
    #     }
    # },
    # {
    #     "address1": "1403 Lincoln Street",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31401",
    #     "coordinates": {
    #         "lat": 32.0613716,
    #         "lng": -81.09482249999999
    #     }
    # },
    # {
    #     "address1": "140 South Hill Avenue",
    #     "address2": "#305",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.0618737,
    #         "lng": -94.16920189999999
    #     }
    # },
    # {
    #     "address1": "642 South 2nd Street",
    #     "address2": "#608",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40202",
    #     "coordinates": {
    #         "lat": 38.2472593,
    #         "lng": -85.7549195
    #     }
    # },
    # {
    #     "address1": "6473 Zephyr Street",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80004",
    #     "coordinates": {
    #         "lat": 39.814341,
    #         "lng": -105.085116
    #     }
    # },
    # {
    #     "address1": "4250 North Valley Lake Drive",
    #     "address2": "#8",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.1279064,
    #         "lng": -94.12180719999999
    #     }
    # },
    # {
    #     "address1": "565 North Lakeshore Drive",
    #     "address2": "",
    #     "city": "Panama City Beach",
    #     "state": "FL",
    #     "postalCode": "32413",
    #     "coordinates": {
    #         "lat": 30.246868,
    #         "lng": -85.918511
    #     }
    # },
    # {
    #     "address1": "5514 West Wedington Drive",
    #     "address2": "#3",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72704",
    #     "coordinates": {
    #         "lat": 36.079411,
    #         "lng": -94.240031
    #     }
    # },
    # {
    #     "address1": "1909 Wainwright Avenue",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32405",
    #     "coordinates": {
    #         "lat": 30.183868,
    #         "lng": -85.722174
    #     }
    # },
    # {
    #     "address1": "4525 West Frier Drive",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85301",
    #     "coordinates": {
    #         "lat": 33.5488732,
    #         "lng": -112.1565998
    #     }
    # },
    # {
    #     "address1": "201 West Montgomery Cross Road",
    #     "address2": "#170",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31406",
    #     "coordinates": {
    #         "lat": 31.9996137,
    #         "lng": -81.13121
    #     }
    # },
    # {
    #     "address1": "915 Heath Drive",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36108",
    #     "coordinates": {
    #         "lat": 32.363883,
    #         "lng": -86.333247
    #     }
    # },
    # {
    #     "address1": "95 Briarwood Drive",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.745751,
    #         "lng": -72.542544
    #     }
    # },
    # {
    #     "address1": "69 Washington Street",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06042",
    #     "coordinates": {
    #         "lat": 41.78712489999999,
    #         "lng": -72.52083069999999
    #     }
    # },
    # {
    #     "address1": "2900 North Western Avenue",
    #     "address2": "",
    #     "city": "Edmond",
    #     "state": "OK",
    #     "postalCode": "73012",
    #     "coordinates": {
    #         "lat": 35.687568,
    #         "lng": -97.53227299999999
    #     }
    # },
    # {
    #     "address1": "7841 West Kristal Way",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85308",
    #     "coordinates": {
    #         "lat": 33.658804,
    #         "lng": -112.228834
    #     }
    # },
    # {
    #     "address1": "361 Parmley Lane",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37207",
    #     "coordinates": {
    #         "lat": 36.2446128,
    #         "lng": -86.8197718
    #     }
    # },
    # {
    #     "address1": "6120 Southeast 84th Street",
    #     "address2": "",
    #     "city": "Oklahoma City",
    #     "state": "OK",
    #     "postalCode": "73135",
    #     "coordinates": {
    #         "lat": 35.380836,
    #         "lng": -97.41582
    #     }
    # },
    # {
    #     "address1": "9428 North 65th Drive",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85302",
    #     "coordinates": {
    #         "lat": 33.571222,
    #         "lng": -112.20045
    #     }
    # },
    # {
    #     "address1": "11 Meeting Place Circle",
    #     "address2": "",
    #     "city": "Boxford",
    #     "state": "MA",
    #     "postalCode": "01921",
    #     "coordinates": {
    #         "lat": 42.6946519,
    #         "lng": -71.0008529
    #     }
    # },
    # {
    #     "address1": "4438 Maine Avenue",
    #     "address2": "",
    #     "city": "Baldwin Park",
    #     "state": "CA",
    #     "postalCode": "91706",
    #     "coordinates": {
    #         "lat": 34.093409,
    #         "lng": -117.959953
    #     }
    # },
    # {
    #     "address1": "65 Jones Lane",
    #     "address2": "",
    #     "city": "Montevallo",
    #     "state": "AL",
    #     "postalCode": "35115",
    #     "coordinates": {
    #         "lat": 33.096851,
    #         "lng": -86.846577
    #     }
    # },
    # {
    #     "address1": "3140 Commander Drive",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40220",
    #     "coordinates": {
    #         "lat": 38.215781,
    #         "lng": -85.653981
    #     }
    # },
    # {
    #     "address1": "107 Guaymas Place",
    #     "address2": "",
    #     "city": "Davis",
    #     "state": "CA",
    #     "postalCode": "95616",
    #     "coordinates": {
    #         "lat": 38.567048,
    #         "lng": -121.746046
    #     }
    # },
    # {
    #     "address1": "6114 West Glenn Drive",
    #     "address2": "#1",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85301",
    #     "coordinates": {
    #         "lat": 33.5401454,
    #         "lng": -112.1912722
    #     }
    # },
    # {
    #     "address1": "622 Thomas Street",
    #     "address2": "",
    #     "city": "Woodland",
    #     "state": "CA",
    #     "postalCode": "95776",
    #     "coordinates": {
    #         "lat": 38.672731,
    #         "lng": -121.76065
    #     }
    # },
    # {
    #     "address1": "127 Grand Heron Drive",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32407",
    #     "coordinates": {
    #         "lat": 30.189702,
    #         "lng": -85.80841099999999
    #     }
    # },
    # {
    #     "address1": "3504 East 16th Avenue",
    #     "address2": "",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99508",
    #     "coordinates": {
    #         "lat": 61.2058945,
    #         "lng": -149.8158624
    #     }
    # },
    # {
    #     "address1": "1230 Stafford Drive",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36117",
    #     "coordinates": {
    #         "lat": 32.32403,
    #         "lng": -86.14840099999999
    #     }
    # },
    # {
    #     "address1": "6007 Yarrow Street",
    #     "address2": "H",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80004",
    #     "coordinates": {
    #         "lat": 39.806211,
    #         "lng": -105.084446
    #     }
    # },
    # {
    #     "address1": "632 Belmar Drive",
    #     "address2": "",
    #     "city": "Edmond",
    #     "state": "OK",
    #     "postalCode": "73025",
    #     "coordinates": {
    #         "lat": 35.7016024,
    #         "lng": -97.4912627
    #     }
    # },
    # {
    #     "address1": "1515 Chandlee Avenue",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32405",
    #     "coordinates": {
    #         "lat": 30.176365,
    #         "lng": -85.666253
    #     }
    # },
    # {
    #     "address1": "10632 Admiral Court",
    #     "address2": "",
    #     "city": "Oklahoma City",
    #     "state": "OK",
    #     "postalCode": "73162",
    #     "coordinates": {
    #         "lat": 35.57886200000001,
    #         "lng": -97.6270728
    #     }
    # },
    # {
    #     "address1": "11655 West 81st Avenue",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80005",
    #     "coordinates": {
    #         "lat": 39.84356820000001,
    #         "lng": -105.1297584
    #     }
    # },
    # {
    #     "address1": "3500 Blanchard Drive Southwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20032",
    #     "coordinates": {
    #         "lat": 38.8388931,
    #         "lng": -77.02011139999999
    #     }
    # },
    # {
    #     "address1": "2755 Country Drive",
    #     "address2": "#244",
    #     "city": "Fremont",
    #     "state": "CA",
    #     "postalCode": "94536",
    #     "coordinates": {
    #         "lat": 37.557882,
    #         "lng": -121.986823
    #     }
    # },
    # {
    #     "address1": "1850 Berryhill Place",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36117",
    #     "coordinates": {
    #         "lat": 32.3527548,
    #         "lng": -86.16858669999999
    #     }
    # },
    # {
    #     "address1": "58 North U.S.A Drive",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 35.994914,
    #         "lng": -94.185867
    #     }
    # },
    # {
    #     "address1": "8785 Ellis Court",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80005",
    #     "coordinates": {
    #         "lat": 39.853725,
    #         "lng": -105.158861
    #     }
    # },
    # {
    #     "address1": "1636 Briarview Court",
    #     "address2": "",
    #     "city": "Severn",
    #     "state": "MD",
    #     "postalCode": "21144",
    #     "coordinates": {
    #         "lat": 39.12539599999999,
    #         "lng": -76.704015
    #     }
    # },
    # {
    #     "address1": "12 Knox Street",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.774166,
    #         "lng": -72.527697
    #     }
    # },
    # {
    #     "address1": "425 Middle Turnpike East",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.7847772,
    #         "lng": -72.50354829999999
    #     }
    # },
    # {
    #     "address1": "2017 North Hartford Drive",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.08820499999999,
    #         "lng": -94.1074905
    #     }
    # },
    # {
    #     "address1": "5900 Upland Road",
    #     "address2": "",
    #     "city": "Brooklyn Park",
    #     "state": "MD",
    #     "postalCode": "21225",
    #     "coordinates": {
    #         "lat": 39.213888,
    #         "lng": -76.61925099999999
    #     }
    # },
    # {
    #     "address1": "9331 Edison Road",
    #     "address2": "",
    #     "city": "Lithia",
    #     "state": "FL",
    #     "postalCode": "33547",
    #     "coordinates": {
    #         "lat": 27.86851,
    #         "lng": -82.07391199999999
    #     }
    # },
    # {
    #     "address1": "1810 Orchard Place",
    #     "address2": "",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99502",
    #     "coordinates": {
    #         "lat": 61.145912,
    #         "lng": -149.9134259
    #     }
    # },
    # {
    #     "address1": "145 Grau Drive",
    #     "address2": "",
    #     "city": "Fremont",
    #     "state": "CA",
    #     "postalCode": "94536",
    #     "coordinates": {
    #         "lat": 37.582453,
    #         "lng": -121.994476
    #     }
    # },
    # {
    #     "address1": "3959 Fairlands Drive",
    #     "address2": "",
    #     "city": "Pleasanton",
    #     "state": "CA",
    #     "postalCode": "94588",
    #     "coordinates": {
    #         "lat": 37.6992001,
    #         "lng": -121.8703701
    #     }
    # },
    # {
    #     "address1": "3613 East 18th Avenue",
    #     "address2": "",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99508",
    #     "coordinates": {
    #         "lat": 61.20485339999999,
    #         "lng": -149.8135521
    #     }
    # },
    # {
    #     "address1": "1275 South Holland Drive",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72704",
    #     "coordinates": {
    #         "lat": 36.051782,
    #         "lng": -94.226855
    #     }
    # },
    # {
    #     "address1": "109 Cambridge Station Road",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40223",
    #     "coordinates": {
    #         "lat": 38.244527,
    #         "lng": -85.56912799999999
    #     }
    # },
    # {
    #     "address1": "2107 Elfen Glen",
    #     "address2": "Apt B",
    #     "city": "Van Buren",
    #     "state": "AR",
    #     "postalCode": "72956",
    #     "coordinates": {
    #         "lat": 35.469752,
    #         "lng": -94.364987
    #     }
    # },
    # {
    #     "address1": "8522 Ingalls Circle",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80003",
    #     "coordinates": {
    #         "lat": 39.8528593,
    #         "lng": -105.0629778
    #     }
    # },
    # {
    #     "address1": "1809 Cedar Drive",
    #     "address2": "",
    #     "city": "Severn",
    #     "state": "MD",
    #     "postalCode": "21144",
    #     "coordinates": {
    #         "lat": 39.139311,
    #         "lng": -76.72028999999999
    #     }
    # },
    # {
    #     "address1": "1376 Oakland Avenue",
    #     "address2": "#1",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.080981,
    #         "lng": -94.172549
    #     }
    # },
    # {
    #     "address1": "4306 Bylsma Circle",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32404",
    #     "coordinates": {
    #         "lat": 30.223294,
    #         "lng": -85.589715
    #     }
    # },
    # {
    #     "address1": "233 Buckland Hills Drive",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06042",
    #     "coordinates": {
    #         "lat": 41.8100683,
    #         "lng": -72.5453665
    #     }
    # },
    # {
    #     "address1": "7701 Southwest 104th Street",
    #     "address2": "",
    #     "city": "Oklahoma City",
    #     "state": "OK",
    #     "postalCode": "73169",
    #     "coordinates": {
    #         "lat": 35.3641983,
    #         "lng": -97.6475346
    #     }
    # },
    # {
    #     "address1": "14003 Crossbranch Court",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40245",
    #     "coordinates": {
    #         "lat": 38.242033,
    #         "lng": -85.489885
    #     }
    # },
    # {
    #     "address1": "19590 East Batavia Drive",
    #     "address2": "",
    #     "city": "Aurora",
    #     "state": "CO",
    #     "postalCode": "80011",
    #     "coordinates": {
    #         "lat": 39.7420886,
    #         "lng": -104.7581149
    #     }
    # },
    # {
    #     "address1": "6424 Simms Street",
    #     "address2": "#71",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80004",
    #     "coordinates": {
    #         "lat": 39.8133443,
    #         "lng": -105.1283237
    #     }
    # },
    # {
    #     "address1": "718 Dutchmans Court",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37076",
    #     "coordinates": {
    #         "lat": 36.2048851,
    #         "lng": -86.5994752
    #     }
    # },
    # {
    #     "address1": "8496 Isles Court",
    #     "address2": "",
    #     "city": "Pasadena",
    #     "state": "MD",
    #     "postalCode": "21122",
    #     "coordinates": {
    #         "lat": 39.111297,
    #         "lng": -76.467049
    #     }
    # },
    # {
    #     "address1": "100 East Joyce Boulevard",
    #     "address2": "#110",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.1253411,
    #         "lng": -94.1551631
    #     }
    # },
    # {
    #     "address1": "9036 Calico Court",
    #     "address2": "",
    #     "city": "Hesperia",
    #     "state": "CA",
    #     "postalCode": "92344",
    #     "coordinates": {
    #         "lat": 34.414491,
    #         "lng": -117.375403
    #     }
    # },
    # {
    #     "address1": "2723 East Joyce Boulevard",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.119414,
    #         "lng": -94.12229500000001
    #     }
    # },
    # {
    #     "address1": "90 Via Verde",
    #     "address2": "",
    #     "city": "San Lorenzo",
    #     "state": "CA",
    #     "postalCode": "94580",
    #     "coordinates": {
    #         "lat": 37.67869,
    #         "lng": -122.117142
    #     }
    # },
    # {
    #     "address1": "1015 Castle Road",
    #     "address2": "",
    #     "city": "Edmond",
    #     "state": "OK",
    #     "postalCode": "73034",
    #     "coordinates": {
    #         "lat": 35.665019,
    #         "lng": -97.466045
    #     }
    # },
    # {
    #     "address1": "2787 West Blackstone Crossing",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72704",
    #     "coordinates": {
    #         "lat": 36.0608984,
    #         "lng": -94.1993461
    #     }
    # },
    # {
    #     "address1": "3555 Alamosa Drive",
    #     "address2": "",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99502",
    #     "coordinates": {
    #         "lat": 61.142316,
    #         "lng": -149.9454749
    #     }
    # },
    # {
    #     "address1": "6231 North 59th Avenue",
    #     "address2": "#35",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85301",
    #     "coordinates": {
    #         "lat": 33.5285304,
    #         "lng": -112.1860744
    #     }
    # },
    # {
    #     "address1": "311 South Panama Street",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36107",
    #     "coordinates": {
    #         "lat": 32.376833,
    #         "lng": -86.27416099999999
    #     }
    # },
    # {
    #     "address1": "3313 Daisy Trail",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37013",
    #     "coordinates": {
    #         "lat": 36.076186,
    #         "lng": -86.60113799999999
    #     }
    # },
    # {
    #     "address1": "5436 Dorbrandt Street",
    #     "address2": "#APT 000002",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99518",
    #     "coordinates": {
    #         "lat": 61.17090200000001,
    #         "lng": -149.904782
    #     }
    # },
    # {
    #     "address1": "553 South Arlington Road",
    #     "address2": "",
    #     "city": "Orange",
    #     "state": "CA",
    #     "postalCode": "92869",
    #     "coordinates": {
    #         "lat": 33.7794839,
    #         "lng": -117.820383
    #     }
    # },
    # {
    #     "address1": "615 Q Street Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20001",
    #     "coordinates": {
    #         "lat": 38.9113118,
    #         "lng": -77.0206808
    #     }
    # },
    # {
    #     "address1": "457 Mountain Village Boulevard",
    #     "address2": "#320-3",
    #     "city": "Mountain Village",
    #     "state": "CO",
    #     "postalCode": "81435",
    #     "coordinates": {
    #         "lat": 37.93323040000001,
    #         "lng": -107.8515732
    #     }
    # },
    # {
    #     "address1": "144 Lauderdale Street",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36116",
    #     "coordinates": {
    #         "lat": 32.309978,
    #         "lng": -86.259716
    #     }
    # },
    # {
    #     "address1": "2 Ambelwood Way",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31411",
    #     "coordinates": {
    #         "lat": 31.9138389,
    #         "lng": -81.07297989999999
    #     }
    # },
    # {
    #     "address1": "4113 Holiday Drive",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32408",
    #     "coordinates": {
    #         "lat": 30.1548681,
    #         "lng": -85.7709976
    #     }
    # },
    # {
    #     "address1": "2001 Van Hoose Drive",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.039421,
    #         "lng": -94.065534
    #     }
    # },
    # {
    #     "address1": "9457 Winfield Place",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36117",
    #     "coordinates": {
    #         "lat": 32.341347,
    #         "lng": -86.14867799999999
    #     }
    # },
    # {
    #     "address1": "1120 Mitchell Young Road",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36108",
    #     "coordinates": {
    #         "lat": 32.327464,
    #         "lng": -86.44011599999999
    #     }
    # },
    # {
    #     "address1": "12816 West 65th Way",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80004",
    #     "coordinates": {
    #         "lat": 39.8141779,
    #         "lng": -105.1426275
    #     }
    # },
    # {
    #     "address1": "10 Erick Road",
    #     "address2": "#47",
    #     "city": "Mansfield",
    #     "state": "MA",
    #     "postalCode": "02048",
    #     "coordinates": {
    #         "lat": 42.032505,
    #         "lng": -71.17718599999999
    #     }
    # },
    # {
    #     "address1": "481 East Redbud Lane",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.103899,
    #         "lng": -94.151128
    #     }
    # },
    # {
    #     "address1": "320 Northwest 22nd Street",
    #     "address2": "",
    #     "city": "Oklahoma City",
    #     "state": "OK",
    #     "postalCode": "73103",
    #     "coordinates": {
    #         "lat": 35.491908,
    #         "lng": -97.51843099999999
    #     }
    # },
    # {
    #     "address1": "33 South Hill Avenue",
    #     "address2": "#306",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.0619602,
    #         "lng": -94.16977700000001
    #     }
    # },
    # {
    #     "address1": "355 Gillette Road",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37211",
    #     "coordinates": {
    #         "lat": 36.061143,
    #         "lng": -86.70823299999999
    #     }
    # },
    # {
    #     "address1": "151 Main Street",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31408",
    #     "coordinates": {
    #         "lat": 32.113199,
    #         "lng": -81.148934
    #     }
    # },
    # {
    #     "address1": "545 Tracey Drive",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32404",
    #     "coordinates": {
    #         "lat": 30.1354251,
    #         "lng": -85.5573034
    #     }
    # },
    # {
    #     "address1": "3 Southerberry Drive",
    #     "address2": "",
    #     "state": "VT",
    #     "postalCode": "05468",
    #     "coordinates": {
    #         "lat": 44.62322460000001,
    #         "lng": -73.1326629
    #     }
    # },
    # {
    #     "address1": "736 Sicard Street Southeast",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20003",
    #     "coordinates": {
    #         "lat": 38.8729038,
    #         "lng": -76.9949528
    #     }
    # },
    # {
    #     "address1": "6214 Herzog Street",
    #     "address2": "",
    #     "city": "Oakland",
    #     "state": "CA",
    #     "postalCode": "94608",
    #     "coordinates": {
    #         "lat": 37.84557849999999,
    #         "lng": -122.2825201
    #     }
    # },
    # {
    #     "address1": "1160 North College Avenue",
    #     "address2": "#2",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.0785477,
    #         "lng": -94.1566273
    #     }
    # },
    # {
    #     "address1": "5843 West McLellan Road",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85301",
    #     "coordinates": {
    #         "lat": 33.5330898,
    #         "lng": -112.1857087
    #     }
    # },
    # {
    #     "address1": "1452 55th Avenue",
    #     "address2": "B",
    #     "city": "Oakland",
    #     "state": "CA",
    #     "postalCode": "94621",
    #     "coordinates": {
    #         "lat": 37.767671,
    #         "lng": -122.202326
    #     }
    # },
    # {
    #     "address1": "4255 Tanager Common",
    #     "address2": "",
    #     "city": "Fremont",
    #     "state": "CA",
    #     "postalCode": "94555",
    #     "coordinates": {
    #         "lat": 37.5738888,
    #         "lng": -122.0460256
    #     }
    # },
    # {
    #     "address1": "13426 West Rovey Avenue",
    #     "address2": "",
    #     "city": "Litchfield Park",
    #     "state": "AZ",
    #     "postalCode": "85340",
    #     "coordinates": {
    #         "lat": 33.522973,
    #         "lng": -112.34802
    #     }
    # },
    # {
    #     "address1": "195 Nursery Street",
    #     "address2": "#D10",
    #     "city": "Springfield",
    #     "state": "MA",
    #     "postalCode": "01104",
    #     "coordinates": {
    #         "lat": 42.1178409,
    #         "lng": -72.5892289
    #     }
    # },
    # {
    #     "address1": "126 Marjorie Lane",
    #     "address2": "C",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06042",
    #     "coordinates": {
    #         "lat": 41.8073257,
    #         "lng": -72.5188292
    #     }
    # },
    # {
    #     "address1": "22 Charnock Street",
    #     "address2": "#2",
    #     "city": "Beverly",
    #     "state": "MA",
    #     "postalCode": "01915",
    #     "coordinates": {
    #         "lat": 42.55227,
    #         "lng": -70.876549
    #     }
    # },
    # {
    #     "address1": "817 25th Street Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20037",
    #     "coordinates": {
    #         "lat": 38.900077,
    #         "lng": -77.053066
    #     }
    # },
    # {
    #     "address1": "2552 Massachusetts Avenue Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20008",
    #     "coordinates": {
    #         "lat": 38.9165459,
    #         "lng": -77.057323
    #     }
    # },
    # {
    #     "address1": "1711 Lore Road",
    #     "address2": "#APT 000106",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99507",
    #     "coordinates": {
    #         "lat": 61.15195259999999,
    #         "lng": -149.8511487
    #     }
    # },
    # {
    #     "address1": "19091 Northeast 23rd Street",
    #     "address2": "",
    #     "city": "Harrah",
    #     "state": "OK",
    #     "postalCode": "73045",
    #     "coordinates": {
    #         "lat": 35.493447,
    #         "lng": -97.193078
    #     }
    # },
    # {
    #     "address1": "8318 North 57th Drive",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85302",
    #     "coordinates": {
    #         "lat": 33.557537,
    #         "lng": -112.183238
    #     }
    # },
    # {
    #     "address1": "7256 West 84th Way",
    #     "address2": "#918",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80003",
    #     "coordinates": {
    #         "lat": 39.8506912,
    #         "lng": -105.0767393
    #     }
    # },
    # {
    #     "address1": "706 Seagrove Road",
    #     "address2": "",
    #     "city": "Glen Burnie",
    #     "state": "MD",
    #     "postalCode": "21060",
    #     "coordinates": {
    #         "lat": 39.163384,
    #         "lng": -76.609205
    #     }
    # },
    # {
    #     "address1": "2318 Camryns Crossing",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32405",
    #     "coordinates": {
    #         "lat": 30.221926,
    #         "lng": -85.62420000000002
    #     }
    # },
    # {
    #     "address1": "968 Virginia Avenue",
    #     "address2": "",
    #     "city": "Olivehurst",
    #     "state": "CA",
    #     "postalCode": "95961",
    #     "coordinates": {
    #         "lat": 39.1022419,
    #         "lng": -121.581218
    #     }
    # },
    # {
    #     "address1": "416 South University Boulevard",
    #     "address2": "",
    #     "city": "Norman",
    #     "state": "OK",
    #     "postalCode": "73069",
    #     "coordinates": {
    #         "lat": 35.215351,
    #         "lng": -97.446319
    #     }
    # },
    # {
    #     "address1": "137 Gazebo East Drive",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36117",
    #     "coordinates": {
    #         "lat": 32.3793507,
    #         "lng": -86.20407399999999
    #     }
    # },
    # {
    #     "address1": "10723 Colonial Woods Court",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40223",
    #     "coordinates": {
    #         "lat": 38.2496439,
    #         "lng": -85.55717709999999
    #     }
    # },
    # {
    #     "address1": "119 Matthew Lane",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37215",
    #     "coordinates": {
    #         "lat": 36.11663619999999,
    #         "lng": -86.80955829999999
    #     }
    # },
    # {
    #     "address1": "3142 West Finger Road",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.042837,
    #         "lng": -94.205309
    #     }
    # },
    # {
    #     "address1": "4 Elm Street",
    #     "address2": "",
    #     "city": "Windsor",
    #     "state": "VT",
    #     "postalCode": "05089",
    #     "coordinates": {
    #         "lat": 43.476997,
    #         "lng": -72.398925
    #     }
    # },
    # {
    #     "address1": "78 School Street",
    #     "address2": "",
    #     "city": "Woburn",
    #     "state": "MA",
    #     "postalCode": "01801",
    #     "coordinates": {
    #         "lat": 42.506877,
    #         "lng": -71.15299
    #     }
    # },
    # {
    #     "address1": "19020 North 68th Avenue",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85308",
    #     "coordinates": {
    #         "lat": 33.6574037,
    #         "lng": -112.2062039
    #     }
    # },
    # {
    #     "address1": "2849 Quail Drive",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72704",
    #     "coordinates": {
    #         "lat": 36.095294,
    #         "lng": -94.20036300000001
    #     }
    # },
    # {
    #     "address1": "2456 22nd Avenue",
    #     "address2": "",
    #     "city": "Greeley",
    #     "state": "CO",
    #     "postalCode": "80631",
    #     "coordinates": {
    #         "lat": 40.397153,
    #         "lng": -104.713982
    #     }
    # },
    # {
    #     "address1": "200 Boulder Road",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.7792079,
    #         "lng": -72.494963
    #     }
    # },
    # {
    #     "address1": "11150 Sun Valley Drive",
    #     "address2": "",
    #     "city": "Oakland",
    #     "state": "CA",
    #     "postalCode": "94605",
    #     "coordinates": {
    #         "lat": 37.752039,
    #         "lng": -122.11822
    #     }
    # },
    # {
    #     "address1": "505 Southeast 32nd Street",
    #     "address2": "",
    #     "city": "Oklahoma City",
    #     "state": "OK",
    #     "postalCode": "73129",
    #     "coordinates": {
    #         "lat": 35.4325058,
    #         "lng": -97.5032743
    #     }
    # },
    # {
    #     "address1": "1025 West 19th Street",
    #     "address2": "#UNIT 1-C",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32405",
    #     "coordinates": {
    #         "lat": 30.18252889999999,
    #         "lng": -85.676771
    #     }
    # },
    # {
    #     "address1": "6725 Pamela Court",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36116",
    #     "coordinates": {
    #         "lat": 32.334546,
    #         "lng": -86.20349999999999
    #     }
    # },
    # {
    #     "address1": "4714 Narrow Lane Road",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36116",
    #     "coordinates": {
    #         "lat": 32.3140725,
    #         "lng": -86.2819674
    #     }
    # },
    # {
    #     "address1": "11 Proctor Circle",
    #     "address2": "",
    #     "city": "Peabody",
    #     "state": "MA",
    #     "postalCode": "01960",
    #     "coordinates": {
    #         "lat": 42.535503,
    #         "lng": -70.953384
    #     }
    # },
    # {
    #     "address1": "10508 Kovats Court",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40223",
    #     "coordinates": {
    #         "lat": 38.2330381,
    #         "lng": -85.5695464
    #     }
    # },
    # {
    #     "address1": "3179 18th Street Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20010",
    #     "coordinates": {
    #         "lat": 38.9312712,
    #         "lng": -77.0412983
    #     }
    # },
    # {
    #     "address1": "3194 Bladensburg Road Northeast",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20018",
    #     "coordinates": {
    #         "lat": 38.930136,
    #         "lng": -76.95929799999999
    #     }
    # },
    # {
    #     "address1": "260 Rio Del Mar Boulevard",
    #     "address2": "##14",
    #     "city": "Aptos",
    #     "state": "CA",
    #     "postalCode": "95003",
    #     "coordinates": {
    #         "lat": 36.967915,
    #         "lng": -121.902513
    #     }
    # },
    # {
    #     "address1": "1040 West 27th Avenue",
    #     "address2": "#APT 000401",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99503",
    #     "coordinates": {
    #         "lat": 61.195892,
    #         "lng": -149.901984
    #     }
    # },
    # {
    #     "address1": "42 Lake Lane",
    #     "address2": "",
    #     "city": "Westmore",
    #     "state": "VT",
    #     "postalCode": "05860",
    #     "coordinates": {
    #         "lat": 44.77954099999999,
    #         "lng": -72.0682889
    #     }
    # },
    # {
    #     "address1": "3718 Bay Tree Road",
    #     "address2": "",
    #     "city": "Lynn Haven",
    #     "state": "FL",
    #     "postalCode": "32444",
    #     "coordinates": {
    #         "lat": 30.205726,
    #         "lng": -85.63441999999999
    #     }
    # },
    # {
    #     "address1": "3408 Bellisima Place",
    #     "address2": "#204",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40245",
    #     "coordinates": {
    #         "lat": 38.2857023,
    #         "lng": -85.5023064
    #     }
    # },
    # {
    #     "address1": "4109 General Bate Drive",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37204",
    #     "coordinates": {
    #         "lat": 36.099427,
    #         "lng": -86.787756
    #     }
    # },
    # {
    #     "address1": "5329 A Street",
    #     "address2": "",
    #     "city": "Greeley",
    #     "state": "CO",
    #     "postalCode": "80634",
    #     "coordinates": {
    #         "lat": 40.4347001,
    #         "lng": -104.7702805
    #     }
    # },
    # {
    #     "address1": "88 Shute Street",
    #     "address2": "#1",
    #     "city": "Everett",
    #     "state": "MA",
    #     "postalCode": "02149",
    #     "coordinates": {
    #         "lat": 42.4192568,
    #         "lng": -71.0469179
    #     }
    # },
    # {
    #     "address1": "480 Keene Road",
    #     "address2": "",
    #     "city": "Walden",
    #     "state": "VT",
    #     "postalCode": "05836",
    #     "coordinates": {
    #         "lat": 44.4879516,
    #         "lng": -72.2823264
    #     }
    # },
    # {
    #     "address1": "4 Cutting Avenue",
    #     "address2": "",
    #     "city": "Worcester",
    #     "state": "MA",
    #     "postalCode": "01606",
    #     "coordinates": {
    #         "lat": 42.307664,
    #         "lng": -71.79180099999999
    #     }
    # },
    # {
    #     "address1": "275 South 40th Street",
    #     "address2": "",
    #     "city": "Boulder",
    #     "state": "CO",
    #     "postalCode": "80305",
    #     "coordinates": {
    #         "lat": 39.988864,
    #         "lng": -105.247011
    #     }
    # },
    # {
    #     "address1": "1189 Northwest End Avenue",
    #     "address2": "#D3",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.0793885,
    #         "lng": -94.19657190000001
    #     }
    # },
    # {
    #     "address1": "25 Cliffside Drive",
    #     "address2": "D",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06042",
    #     "coordinates": {
    #         "lat": 41.79505229999999,
    #         "lng": -72.48762169999999
    #     }
    # },
    # {
    #     "address1": "2515 60th Avenue",
    #     "address2": "",
    #     "city": "Oakland",
    #     "state": "CA",
    #     "postalCode": "94605",
    #     "coordinates": {
    #         "lat": 37.7705346,
    #         "lng": -122.1907449
    #     }
    # },
    # {
    #     "address1": "2057 Lucas Street",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36107",
    #     "coordinates": {
    #         "lat": 32.3934472,
    #         "lng": -86.2766814
    #     }
    # },
    # {
    #     "address1": "386 Daniels Road",
    #     "address2": "",
    #     "city": "New Haven",
    #     "state": "VT",
    #     "postalCode": "05472",
    #     "coordinates": {
    #         "lat": 44.114323,
    #         "lng": -73.1911159
    #     }
    # },
    # {
    #     "address1": "9805 Meadow Vale Drive",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40242",
    #     "coordinates": {
    #         "lat": 38.281955,
    #         "lng": -85.57182100000001
    #     }
    # },
    # {
    #     "address1": "8 Village Circle",
    #     "address2": "",
    #     "city": "Randolph",
    #     "state": "VT",
    #     "postalCode": "05060",
    #     "coordinates": {
    #         "lat": 43.927687,
    #         "lng": -72.65563
    #     }
    # },
    # {
    #     "address1": "1011 San Jose Street",
    #     "address2": "",
    #     "city": "San Leandro",
    #     "state": "CA",
    #     "postalCode": "94577",
    #     "coordinates": {
    #         "lat": 37.72956300000001,
    #         "lng": -122.147074
    #     }
    # },
    # {
    #     "address1": "2505 Walker Lane",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37207",
    #     "coordinates": {
    #         "lat": 36.2125119,
    #         "lng": -86.806625
    #     }
    # },
    # {
    #     "address1": "11225 West 79th Drive",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80005",
    #     "coordinates": {
    #         "lat": 39.840784,
    #         "lng": -105.124533
    #     }
    # },
    # {
    #     "address1": "1907 18th Avenue South",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37212",
    #     "coordinates": {
    #         "lat": 36.134703,
    #         "lng": -86.79737700000001
    #     }
    # },
    # {
    #     "address1": "16 Conway Street",
    #     "address2": "",
    #     "city": "Shelburne Falls",
    #     "state": "MA",
    #     "postalCode": "01370",
    #     "coordinates": {
    #         "lat": 42.6022637,
    #         "lng": -72.74100059999999
    #     }
    # },
    # {
    #     "address1": "20375 Wisteria Street",
    #     "address2": "",
    #     "city": "Castro Valley",
    #     "state": "CA",
    #     "postalCode": "94546",
    #     "coordinates": {
    #         "lat": 37.696683,
    #         "lng": -122.085865
    #     }
    # },
    # {
    #     "address1": "6408 Fern Crest Road",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40291",
    #     "coordinates": {
    #         "lat": 38.154488,
    #         "lng": -85.612144
    #     }
    # },
    # {
    #     "address1": "175 Creek Road",
    #     "address2": "",
    #     "city": "Castleton",
    #     "state": "VT",
    #     "postalCode": "05735",
    #     "coordinates": {
    #         "lat": 43.6055996,
    #         "lng": -73.2336737
    #     }
    # },
    # {
    #     "address1": "2531 Prestwick Avenue",
    #     "address2": "",
    #     "city": "Concord",
    #     "state": "CA",
    #     "postalCode": "94519",
    #     "coordinates": {
    #         "lat": 37.9966039,
    #         "lng": -122.0280747
    #     }
    # },
    # {
    #     "address1": "1002 Highland Avenue",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40204",
    #     "coordinates": {
    #         "lat": 38.2371577,
    #         "lng": -85.7367362
    #     }
    # },
    # {
    #     "address1": "2927 Leatherwood Drive",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37214",
    #     "coordinates": {
    #         "lat": 36.156413,
    #         "lng": -86.65534099999999
    #     }
    # },
    # {
    #     "address1": "8467 Chase Drive",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80003",
    #     "coordinates": {
    #         "lat": 39.851766,
    #         "lng": -105.071498
    #     }
    # },
    # {
    #     "address1": "8556 Nelson Court",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80005",
    #     "coordinates": {
    #         "lat": 39.850965,
    #         "lng": -105.117879
    #     }
    # },
    # {
    #     "address1": "122 Summer Street",
    #     "address2": "#1",
    #     "city": "Medford",
    #     "state": "MA",
    #     "postalCode": "02155",
    #     "coordinates": {
    #         "lat": 42.415648,
    #         "lng": -71.116886
    #     }
    # },
    # {
    #     "address1": "12061 Johns Road",
    #     "address2": "#APT 000002",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99515",
    #     "coordinates": {
    #         "lat": 61.111453,
    #         "lng": -149.8780899
    #     }
    # },
    # {
    #     "address1": "8358 WB&A Road",
    #     "address2": "",
    #     "city": "Severn",
    #     "state": "MD",
    #     "postalCode": "21144",
    #     "coordinates": {
    #         "lat": 39.108962,
    #         "lng": -76.68668799999999
    #     }
    # },
    # {
    #     "address1": "43 Henderson Avenue",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31406",
    #     "coordinates": {
    #         "lat": 31.97937899999999,
    #         "lng": -81.06062
    #     }
    # },
    # {
    #     "address1": "347 Brewer Drive",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37211",
    #     "coordinates": {
    #         "lat": 36.054592,
    #         "lng": -86.708157
    #     }
    # },
    # {
    #     "address1": "2765 North Barcelona Avenue",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.102026,
    #         "lng": -94.15365
    #     }
    # },
    # {
    #     "address1": "5311 Chenoweth Park Lane",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40291",
    #     "coordinates": {
    #         "lat": 38.168051,
    #         "lng": -85.571491
    #     }
    # },
    # {
    #     "address1": "6398 Jellison Way",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80004",
    #     "coordinates": {
    #         "lat": 39.8118489,
    #         "lng": -105.1121974
    #     }
    # },
    # {
    #     "address1": "604 Northwest 118th Street",
    #     "address2": "",
    #     "city": "Oklahoma City",
    #     "state": "OK",
    #     "postalCode": "73114",
    #     "coordinates": {
    #         "lat": 35.5902559,
    #         "lng": -97.523444
    #     }
    # },
    # {
    #     "address1": "37 Rushforde Drive",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.738226,
    #         "lng": -72.538398
    #     }
    # },
    # {
    #     "address1": "5434 West Beck Lane",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85306",
    #     "coordinates": {
    #         "lat": 33.6266139,
    #         "lng": -112.176412
    #     }
    # },
    # {
    #     "address1": "1516 Ringe Drive",
    #     "address2": "",
    #     "city": "Severn",
    #     "state": "MD",
    #     "postalCode": "21144",
    #     "coordinates": {
    #         "lat": 39.094173,
    #         "lng": -76.68423299999999
    #     }
    # },
    # {
    #     "address1": "3701 Lake Towne Drive",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37013",
    #     "coordinates": {
    #         "lat": 36.068871,
    #         "lng": -86.612042
    #     }
    # },
    # {
    #     "address1": "20250 North 67th Avenue",
    #     "address2": "#2143",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85308",
    #     "coordinates": {
    #         "lat": 33.6705359,
    #         "lng": -112.2044722
    #     }
    # },
    # {
    #     "address1": "62 Prospect Avenue",
    #     "address2": "#1",
    #     "city": "Quincy",
    #     "state": "MA",
    #     "postalCode": "02170",
    #     "coordinates": {
    #         "lat": 42.261576,
    #         "lng": -71.020522
    #     }
    # },
    # {
    #     "address1": "25 Morton Street",
    #     "address2": "#216",
    #     "city": "Quincy",
    #     "state": "MA",
    #     "postalCode": "02169",
    #     "coordinates": {
    #         "lat": 42.24450900000001,
    #         "lng": -71.021176
    #     }
    # },
    # {
    #     "address1": "8202 4 Winds Drive",
    #     "address2": "#3",
    #     "city": "Lyndon",
    #     "state": "KY",
    #     "postalCode": "40222",
    #     "coordinates": {
    #         "lat": 38.26545309999999,
    #         "lng": -85.60216830000002
    #     }
    # },
    # {
    #     "address1": "513 Habberton Road",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.107299,
    #         "lng": -94.053033
    #     }
    # },
    # {
    #     "address1": "1960 Sigfrid Court",
    #     "address2": "",
    #     "city": "Annapolis",
    #     "state": "MD",
    #     "postalCode": "21401",
    #     "coordinates": {
    #         "lat": 38.998796,
    #         "lng": -76.564554
    #     }
    # },
    # {
    #     "address1": "663 Chesapeake Way",
    #     "address2": "#1",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.0498647,
    #         "lng": -94.1504411
    #     }
    # },
    # {
    #     "address1": "3354 Wilmington Road",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36105",
    #     "coordinates": {
    #         "lat": 32.345724,
    #         "lng": -86.301384
    #     }
    # },
    # {
    #     "address1": "8529 Old Harding Lane",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37221",
    #     "coordinates": {
    #         "lat": 36.027995,
    #         "lng": -87.014506
    #     }
    # },
    # {
    #     "address1": "22219 Panama City Beach Parkway",
    #     "address2": "",
    #     "city": "Panama City Beach",
    #     "state": "FL",
    #     "postalCode": "32413",
    #     "coordinates": {
    #         "lat": 30.2620426,
    #         "lng": -85.96316709999999
    #     }
    # },
    # {
    #     "address1": "37 East Broad Street",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31401",
    #     "coordinates": {
    #         "lat": 32.0776278,
    #         "lng": -81.08469219999999
    #     }
    # },
    # {
    #     "address1": "1309 Columbia Road Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20009",
    #     "coordinates": {
    #         "lat": 38.9275945,
    #         "lng": -77.0307141
    #     }
    # },
    # {
    #     "address1": "1211 Castine Court",
    #     "address2": "",
    #     "city": "Pasadena",
    #     "state": "MD",
    #     "postalCode": "21122",
    #     "coordinates": {
    #         "lat": 39.1404092,
    #         "lng": -76.5313772
    #     }
    # },
    # {
    #     "address1": "906 West Berry Street",
    #     "address2": "#204",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.0760793,
    #         "lng": -94.1723526
    #     }
    # },
    # {
    #     "address1": "341 Oakland Street",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06042",
    #     "coordinates": {
    #         "lat": 41.805274,
    #         "lng": -72.5180772
    #     }
    # },
    # {
    #     "address1": "60 Downey Drive",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.7786337,
    #         "lng": -72.5757232
    #     }
    # },
    # {
    #     "address1": "3770 North Front Street",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.1183319,
    #         "lng": -94.1443548
    #     }
    # },
    # {
    #     "address1": "25 Church Street",
    #     "address2": "A",
    #     "city": "Pittsfield",
    #     "state": "MA",
    #     "postalCode": "01201",
    #     "coordinates": {
    #         "lat": 42.446859,
    #         "lng": -73.255836
    #     }
    # },
    # {
    #     "address1": "6578 Marauder Drive",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37209",
    #     "coordinates": {
    #         "lat": 36.142929,
    #         "lng": -86.885521
    #     }
    # },
    # {
    #     "address1": "2747 68th Avenue",
    #     "address2": "",
    #     "city": "Oakland",
    #     "state": "CA",
    #     "postalCode": "94605",
    #     "coordinates": {
    #         "lat": 37.768532,
    #         "lng": -122.180694
    #     }
    # },
    # {
    #     "address1": "95 Woods Hill Road",
    #     "address2": "",
    #     "state": "VT",
    #     "postalCode": "05488",
    #     "coordinates": {
    #         "lat": 44.897682,
    #         "lng": -73.0753299
    #     }
    # },
    # {
    #     "address1": "35 Keach Avenue",
    #     "address2": "",
    #     "city": "Worcester",
    #     "state": "MA",
    #     "postalCode": "01607",
    #     "coordinates": {
    #         "lat": 42.2269409,
    #         "lng": -71.801441
    #     }
    # },
    # {
    #     "address1": "1822 North Grand Avenue",
    #     "address2": "",
    #     "city": "Pueblo",
    #     "state": "CO",
    #     "postalCode": "81003",
    #     "coordinates": {
    #         "lat": 38.284427,
    #         "lng": -104.611581
    #     }
    # },
    # {
    #     "address1": "1809 U.S. 80",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31408",
    #     "coordinates": {
    #         "lat": 32.0847824,
    #         "lng": -81.16739679999999
    #     }
    # },
    # {
    #     "address1": "5065 North 54th Avenue",
    #     "address2": "#8",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85301",
    #     "coordinates": {
    #         "lat": 33.5118429,
    #         "lng": -112.1748805
    #     }
    # },
    # {
    #     "address1": "1261 Steamboat Drive",
    #     "address2": "#3",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72704",
    #     "coordinates": {
    #         "lat": 36.0804859,
    #         "lng": -94.2049698
    #     }
    # },
    # {
    #     "address1": "1695 Archer Street",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31405",
    #     "coordinates": {
    #         "lat": 32.0475974,
    #         "lng": -81.13348289999999
    #     }
    # },
    # {
    #     "address1": "3904 October Woods Drive",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37013",
    #     "coordinates": {
    #         "lat": 36.009291,
    #         "lng": -86.624016
    #     }
    # },
    # {
    #     "address1": "1223 Delaware Avenue",
    #     "address2": "",
    #     "city": "Deale",
    #     "state": "MD",
    #     "postalCode": "20733",
    #     "coordinates": {
    #         "lat": 38.799962,
    #         "lng": -76.51803699999999
    #     }
    # },
    # {
    #     "address1": "10383 Eagle River Lane",
    #     "address2": "",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99577",
    #     "coordinates": {
    #         "lat": 61.31412899999999,
    #         "lng": -149.509103
    #     }
    # },
    # {
    #     "address1": "1314 89th Avenue",
    #     "address2": "",
    #     "city": "Oakland",
    #     "state": "CA",
    #     "postalCode": "94621",
    #     "coordinates": {
    #         "lat": 37.7497401,
    #         "lng": -122.1762833
    #     }
    # },
    # {
    #     "address1": "21 Longview Bluff Drive East",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31419",
    #     "coordinates": {
    #         "lat": 31.95754299999999,
    #         "lng": -81.13848899999999
    #     }
    # },
    # {
    #     "address1": "1689 Fisher Pond Road",
    #     "address2": "",
    #     "city": "Saint Albans City",
    #     "state": "VT",
    #     "postalCode": "05478",
    #     "coordinates": {
    #         "lat": 44.826977,
    #         "lng": -73.055054
    #     }
    # },
    # {
    #     "address1": "9920 West 81st Avenue",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80005",
    #     "coordinates": {
    #         "lat": 39.8446204,
    #         "lng": -105.1083834
    #     }
    # },
    # {
    #     "address1": "2732 Rosedale Place",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37211",
    #     "coordinates": {
    #         "lat": 36.1230861,
    #         "lng": -86.7625204
    #     }
    # },
    # {
    #     "address1": "10881 Northforde Drive",
    #     "address2": "",
    #     "city": "Cupertino",
    #     "state": "CA",
    #     "postalCode": "95014",
    #     "coordinates": {
    #         "lat": 37.335812,
    #         "lng": -122.023985
    #     }
    # },
    # {
    #     "address1": "926 Mill Court",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31419",
    #     "coordinates": {
    #         "lat": 31.959343,
    #         "lng": -81.142287
    #     }
    # },
    # {
    #     "address1": "7550 Kline Drive",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80005",
    #     "coordinates": {
    #         "lat": 39.8342031,
    #         "lng": -105.1106565
    #     }
    # },
    # {
    #     "address1": "5688 Johnson Court",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80002",
    #     "coordinates": {
    #         "lat": 39.798419,
    #         "lng": -105.109316
    #     }
    # },
    # {
    #     "address1": "4439 Gale Street",
    #     "address2": "",
    #     "city": "Livermore",
    #     "state": "CA",
    #     "postalCode": "94550",
    #     "coordinates": {
    #         "lat": 37.690199,
    #         "lng": -121.7411119
    #     }
    # },
    # {
    #     "address1": "6450 West Bethany Home Road",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85301",
    #     "coordinates": {
    #         "lat": 33.5242005,
    #         "lng": -112.1991369
    #     }
    # },
    # {
    #     "address1": "2931 Shady Oaks Drive",
    #     "address2": "",
    #     "city": "Evans",
    #     "state": "CO",
    #     "postalCode": "80620",
    #     "coordinates": {
    #         "lat": 40.384469,
    #         "lng": -104.726478
    #     }
    # },
    # {
    #     "address1": "6451 West Bell Road",
    #     "address2": "#1144",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85308",
    #     "coordinates": {
    #         "lat": 33.6380231,
    #         "lng": -112.1986753
    #     }
    # },
    # {
    #     "address1": "644 West Maple Street",
    #     "address2": "#2",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.0703335,
    #         "lng": -94.1686289
    #     }
    # },
    # {
    #     "address1": "1219 North Storer Avenue",
    #     "address2": "#66",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.078949,
    #         "lng": -94.17225499999999
    #     }
    # },
    # {
    #     "address1": "152 Holly Court",
    #     "address2": "",
    #     "city": "Mountain View",
    #     "state": "CA",
    #     "postalCode": "94043",
    #     "coordinates": {
    #         "lat": 37.390391,
    #         "lng": -122.060062
    #     }
    # },
    # {
    #     "address1": "6086 Kennedy Drive",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72704",
    #     "coordinates": {
    #         "lat": 36.103629,
    #         "lng": -94.24773599999999
    #     }
    # },
    # {
    #     "address1": "2300 Deer Path Circle",
    #     "address2": "#207",
    #     "city": "Hurstbourne Acres",
    #     "state": "KY",
    #     "postalCode": "40220",
    #     "coordinates": {
    #         "lat": 38.2187876,
    #         "lng": -85.59292239999999
    #     }
    # },
    # {
    #     "address1": "802 East 37th Street",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31401",
    #     "coordinates": {
    #         "lat": 32.054012,
    #         "lng": -81.087324
    #     }
    # },
    # {
    #     "address1": "5821 Taft Street",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80004",
    #     "coordinates": {
    #         "lat": 39.8029119,
    #         "lng": -105.1308558
    #     }
    # },
    # {
    #     "address1": "188 Saint Matthews Avenue",
    #     "address2": "#1",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40207",
    #     "coordinates": {
    #         "lat": 38.2577576,
    #         "lng": -85.6546706
    #     }
    # },
    # {
    #     "address1": "68 Hampstead Place",
    #     "address2": "",
    #     "city": "Athol",
    #     "state": "MA",
    #     "postalCode": "01331",
    #     "coordinates": {
    #         "lat": 42.5894395,
    #         "lng": -72.2275859
    #     }
    # },
    # {
    #     "address1": "3164 West Woodfield Way",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72704",
    #     "coordinates": {
    #         "lat": 36.084691,
    #         "lng": -94.20445
    #     }
    # },
    # {
    #     "address1": "7998 Chase Circle",
    #     "address2": "#1",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80003",
    #     "coordinates": {
    #         "lat": 39.841232,
    #         "lng": -105.057933
    #     }
    # },
    # {
    #     "address1": "1797 Pasatiempo Drive",
    #     "address2": "",
    #     "city": "Chico",
    #     "state": "CA",
    #     "postalCode": "95928",
    #     "coordinates": {
    #         "lat": 39.6777229,
    #         "lng": -121.7704692
    #     }
    # },
    # {
    #     "address1": "3722 Kisling Loop",
    #     "address2": "",
    #     "city": "Tyndall Air Force Base",
    #     "state": "FL",
    #     "postalCode": "32403",
    #     "coordinates": {
    #         "lat": 30.1048481,
    #         "lng": -85.65097360000001
    #     }
    # },
    # {
    #     "address1": "429 Patterson Street",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37211",
    #     "coordinates": {
    #         "lat": 36.102655,
    #         "lng": -86.744186
    #     }
    # },
    # {
    #     "address1": "6140 Fenton Street",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80003",
    #     "coordinates": {
    #         "lat": 39.8080314,
    #         "lng": -105.0601435
    #     }
    # },
    # {
    #     "address1": "7404 West Crest Lane",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85310",
    #     "coordinates": {
    #         "lat": 33.6851098,
    #         "lng": -112.2167229
    #     }
    # },
    # {
    #     "address1": "7841 North 59th Lane",
    #     "address2": "#G37",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85301",
    #     "coordinates": {
    #         "lat": 33.5516587,
    #         "lng": -112.1879207
    #     }
    # },
    # {
    #     "address1": "8043 Cranberry Street",
    #     "address2": "#APT 000001",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99502",
    #     "coordinates": {
    #         "lat": 61.14769579999999,
    #         "lng": -149.9369466
    #     }
    # },
    # {
    #     "address1": "173 Spruce Street",
    #     "address2": "#18",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.7705332,
    #         "lng": -72.51594109999999
    #     }
    # },
    # {
    #     "address1": "4712 Cherokee Heights Road",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32404",
    #     "coordinates": {
    #         "lat": 30.234223,
    #         "lng": -85.566684
    #     }
    # },
    # {
    #     "address1": "915 Sacramento Street",
    #     "address2": "",
    #     "city": "Bakersfield",
    #     "state": "CA",
    #     "postalCode": "93305",
    #     "coordinates": {
    #         "lat": 35.3798759,
    #         "lng": -119.0002119
    #     }
    # },
    # {
    #     "address1": "317 Windsor Road",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31419",
    #     "coordinates": {
    #         "lat": 31.973034,
    #         "lng": -81.141871
    #     }
    # },
    # {
    #     "address1": "1332 Maple Street",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36108",
    #     "coordinates": {
    #         "lat": 32.3589738,
    #         "lng": -86.3278235
    #     }
    # },
    # {
    #     "address1": "4709 Blagden Terrace Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20011",
    #     "coordinates": {
    #         "lat": 38.9481213,
    #         "lng": -77.0401892
    #     }
    # },
    # {
    #     "address1": "5102 Ander Drive",
    #     "address2": "",
    #     "city": "Brentwood",
    #     "state": "TN",
    #     "postalCode": "37027",
    #     "coordinates": {
    #         "lat": 36.0025004,
    #         "lng": -86.6944901
    #     }
    # },
    # {
    #     "address1": "6754 Field Street",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80004",
    #     "coordinates": {
    #         "lat": 39.8193709,
    #         "lng": -105.097531
    #     }
    # },
    # {
    #     "address1": "2347 Glen Eagle Drive",
    #     "address2": "",
    #     "city": "Northfield",
    #     "state": "KY",
    #     "postalCode": "40222",
    #     "coordinates": {
    #         "lat": 38.2862836,
    #         "lng": -85.6299745
    #     }
    # },
    # {
    #     "address1": "1613 Maple Timber Court",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37013",
    #     "coordinates": {
    #         "lat": 36.067096,
    #         "lng": -86.607005
    #     }
    # },
    # {
    #     "address1": "269 Park Street",
    #     "address2": "#1",
    #     "city": "North Reading",
    #     "state": "MA",
    #     "postalCode": "01864",
    #     "coordinates": {
    #         "lat": 42.57268,
    #         "lng": -71.09888800000002
    #     }
    # },
    # {
    #     "address1": "6444 North 67th Avenue",
    #     "address2": "#1081",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85301",
    #     "coordinates": {
    #         "lat": 33.5302444,
    #         "lng": -112.2049579
    #     }
    # },
    # {
    #     "address1": "11 Pine Point Road",
    #     "address2": "",
    #     "city": "Duxbury",
    #     "state": "MA",
    #     "postalCode": "02332",
    #     "coordinates": {
    #         "lat": 42.0613192,
    #         "lng": -70.6510247
    #     }
    # },
    # {
    #     "address1": "4136 East Virginia Lane",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36116",
    #     "coordinates": {
    #         "lat": 32.295998,
    #         "lng": -86.22073999999999
    #     }
    # },
    # {
    #     "address1": "5740 North 59th Avenue",
    #     "address2": "#1156",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85301",
    #     "coordinates": {
    #         "lat": 33.5207722,
    #         "lng": -112.189044
    #     }
    # },
    # {
    #     "address1": "95 Central Street",
    #     "address2": "A",
    #     "city": "Springfield",
    #     "state": "MA",
    #     "postalCode": "01105",
    #     "coordinates": {
    #         "lat": 42.098581,
    #         "lng": -72.57880999999999
    #     }
    # },
    # {
    #     "address1": "74 Heard Street",
    #     "address2": "#1",
    #     "city": "Chelsea",
    #     "state": "MA",
    #     "postalCode": "02150",
    #     "coordinates": {
    #         "lat": 42.3972985,
    #         "lng": -71.035599
    #     }
    # },
    # {
    #     "address1": "2500 Snowdoun Chambers Road",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36105",
    #     "coordinates": {
    #         "lat": 32.24569110000001,
    #         "lng": -86.2577436
    #     }
    # },
    # {
    #     "address1": "429 Dennison Ridge Drive",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.750419,
    #         "lng": -72.474013
    #     }
    # },
    # {
    #     "address1": "1208 Lindenwood Drive",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32405",
    #     "coordinates": {
    #         "lat": 30.187016,
    #         "lng": -85.681247
    #     }
    # },
    # {
    #     "address1": "7609 Doris Place",
    #     "address2": "",
    #     "city": "Oklahoma City",
    #     "state": "OK",
    #     "postalCode": "73162",
    #     "coordinates": {
    #         "lat": 35.5759649,
    #         "lng": -97.64877299999999
    #     }
    # },
    # {
    #     "address1": "1915 Southeast 29th Street",
    #     "address2": "",
    #     "city": "Oklahoma City",
    #     "state": "OK",
    #     "postalCode": "73129",
    #     "coordinates": {
    #         "lat": 35.4360844,
    #         "lng": -97.4787061
    #     }
    # },
    # {
    #     "address1": "212 Holiday Circle",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31419",
    #     "coordinates": {
    #         "lat": 32.025153,
    #         "lng": -81.240329
    #     }
    # },
    # {
    #     "address1": "32 Amsden Street",
    #     "address2": "#1",
    #     "city": "Arlington",
    #     "state": "MA",
    #     "postalCode": "02474",
    #     "coordinates": {
    #         "lat": 42.4043927,
    #         "lng": -71.138137
    #     }
    # },
    # {
    #     "address1": "4016 Doane Street",
    #     "address2": "",
    #     "city": "Fremont",
    #     "state": "CA",
    #     "postalCode": "94538",
    #     "coordinates": {
    #         "lat": 37.514834,
    #         "lng": -121.95302
    #     }
    # },
    # {
    #     "address1": "8700 Lillington Circle",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36117",
    #     "coordinates": {
    #         "lat": 32.330168,
    #         "lng": -86.14481099999999
    #     }
    # },
    # {
    #     "address1": "7720 Allison Street",
    #     "address2": "#105",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80005",
    #     "coordinates": {
    #         "lat": 39.8383411,
    #         "lng": -105.0855734
    #     }
    # },
    # {
    #     "address1": "17878 Front Beach Road",
    #     "address2": "#C-2",
    #     "city": "Panama City Beach",
    #     "state": "FL",
    #     "postalCode": "32413",
    #     "coordinates": {
    #         "lat": 30.237658,
    #         "lng": -85.91577099999999
    #     }
    # },
    # {
    #     "address1": "1328 Tuckerman Street Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20011",
    #     "coordinates": {
    #         "lat": 38.9673595,
    #         "lng": -77.03106919999999
    #     }
    # },
    # {
    #     "address1": "4600 East Huntsville Road",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.0476559,
    #         "lng": -94.0953342
    #     }
    # },
    # {
    #     "address1": "5038 North Cimarron Drive",
    #     "address2": "",
    #     "city": "Beverly Hills",
    #     "state": "FL",
    #     "postalCode": "34465",
    #     "coordinates": {
    #         "lat": 28.935938,
    #         "lng": -82.527367
    #     }
    # },
    # {
    #     "address1": "1216 West Hill Street",
    #     "address2": "M",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40210",
    #     "coordinates": {
    #         "lat": 38.227343,
    #         "lng": -85.7764254
    #     }
    # },
    # {
    #     "address1": "3033 Aubert Avenue",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40206",
    #     "coordinates": {
    #         "lat": 38.250779,
    #         "lng": -85.679931
    #     }
    # },
    # {
    #     "address1": "17020 West 64th Drive",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80007",
    #     "coordinates": {
    #         "lat": 39.8131034,
    #         "lng": -105.1914804
    #     }
    # },
    # {
    #     "address1": "12420 West Montebello Avenue",
    #     "address2": "",
    #     "city": "Litchfield Park",
    #     "state": "AZ",
    #     "postalCode": "85340",
    #     "coordinates": {
    #         "lat": 33.519491,
    #         "lng": -112.32613
    #     }
    # },
    # {
    #     "address1": "2538 East 40th Plaza",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32405",
    #     "coordinates": {
    #         "lat": 30.221455,
    #         "lng": -85.626834
    #     }
    # },
    # {
    #     "address1": "827 10th Street Northeast",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20002",
    #     "coordinates": {
    #         "lat": 38.901021,
    #         "lng": -76.992391
    #     }
    # },
    # {
    #     "address1": "5912 North 48th Avenue",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85301",
    #     "coordinates": {
    #         "lat": 33.5231022,
    #         "lng": -112.162186
    #     }
    # },
    # {
    #     "address1": "37 Fieldside Drive",
    #     "address2": "",
    #     "city": "Groton",
    #     "state": "CT",
    #     "postalCode": "06340",
    #     "coordinates": {
    #         "lat": 41.3668422,
    #         "lng": -72.07844349999999
    #     }
    # },
    # {
    #     "address1": "9176 Ellis Way",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80005",
    #     "coordinates": {
    #         "lat": 39.8624095,
    #         "lng": -105.1574648
    #     }
    # },
    # {
    #     "address1": "5370 Business Park Drive",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36116",
    #     "coordinates": {
    #         "lat": 32.317376,
    #         "lng": -86.232969
    #     }
    # },
    # {
    #     "address1": "1612 Beech Street",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40211",
    #     "coordinates": {
    #         "lat": 38.2296247,
    #         "lng": -85.805719
    #     }
    # },
    # {
    #     "address1": "8532 Ingalls Circle",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80003",
    #     "coordinates": {
    #         "lat": 39.8532617,
    #         "lng": -105.0629712
    #     }
    # },
    # {
    #     "address1": "7941 Alpine View Circle",
    #     "address2": "",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99507",
    #     "coordinates": {
    #         "lat": 61.1486467,
    #         "lng": -149.830947
    #     }
    # },
    # {
    #     "address1": "8595 West 81st Drive",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80005",
    #     "coordinates": {
    #         "lat": 39.8449341,
    #         "lng": -105.0937351
    #     }
    # },
    # {
    #     "address1": "4296 North Blossom Court",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.1288759,
    #         "lng": -94.1239252
    #     }
    # },
    # {
    #     "address1": "1738 Annabellas Drive",
    #     "address2": "",
    #     "city": "Panama City Beach",
    #     "state": "FL",
    #     "postalCode": "32407",
    #     "coordinates": {
    #         "lat": 30.1877596,
    #         "lng": -85.7782311
    #     }
    # },
    # {
    #     "address1": "3215 Madsen Street",
    #     "address2": "",
    #     "city": "Hayward",
    #     "state": "CA",
    #     "postalCode": "94541",
    #     "coordinates": {
    #         "lat": 37.6618825,
    #         "lng": -122.0904612
    #     }
    # },
    # {
    #     "address1": "4 Village Lake Drive",
    #     "address2": "#4",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72703",
    #     "coordinates": {
    #         "lat": 36.0994717,
    #         "lng": -94.1570279
    #     }
    # },
    # {
    #     "address1": "86 Russell Street",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.77985700000001,
    #         "lng": -72.525724
    #     }
    # },
    # {
    #     "address1": "570 Broadway",
    #     "address2": "",
    #     "city": "Lynnfield",
    #     "state": "MA",
    #     "postalCode": "01940",
    #     "coordinates": {
    #         "lat": 42.517525,
    #         "lng": -71.00125799999999
    #     }
    # },
    # {
    #     "address1": "1405 Monroe Street Northeast",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20017",
    #     "coordinates": {
    #         "lat": 38.93258,
    #         "lng": -76.98579699999999
    #     }
    # },
    # {
    #     "address1": "900 North Leverett Avenue",
    #     "address2": "#126",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72701",
    #     "coordinates": {
    #         "lat": 36.0754825,
    #         "lng": -94.1696884
    #     }
    # },
    # {
    #     "address1": "222 Quince Street",
    #     "address2": "#2-B",
    #     "city": "San Diego",
    #     "state": "CA",
    #     "postalCode": "92103",
    #     "coordinates": {
    #         "lat": 32.7368499,
    #         "lng": -117.162443
    #     }
    # },
    # {
    #     "address1": "370 Wallace Road",
    #     "address2": "#D-28",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37211",
    #     "coordinates": {
    #         "lat": 36.078257,
    #         "lng": -86.724182
    #     }
    # },
    # {
    #     "address1": "6672 Urban Court",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80004",
    #     "coordinates": {
    #         "lat": 39.817946,
    #         "lng": -105.13477
    #     }
    # },
    # {
    #     "address1": "516 Southwest 60th Terrace",
    #     "address2": "",
    #     "city": "Oklahoma City",
    #     "state": "OK",
    #     "postalCode": "73139",
    #     "coordinates": {
    #         "lat": 35.4051605,
    #         "lng": -97.5223633
    #     }
    # },
    # {
    #     "address1": "1513 Southeast 9th Street",
    #     "address2": "",
    #     "city": "Moore",
    #     "state": "OK",
    #     "postalCode": "73160",
    #     "coordinates": {
    #         "lat": 35.329431,
    #         "lng": -97.465397
    #     }
    # },
    # {
    #     "address1": "154 Byrd Drive",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32404",
    #     "coordinates": {
    #         "lat": 30.161691,
    #         "lng": -85.59920199999999
    #     }
    # },
    # {
    #     "address1": "1106 Homer Avenue",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31405",
    #     "coordinates": {
    #         "lat": 32.0453896,
    #         "lng": -81.12456809999999
    #     }
    # },
    # {
    #     "address1": "1010 M Street Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20001",
    #     "coordinates": {
    #         "lat": 38.9054822,
    #         "lng": -77.0265494
    #     }
    # },
    # {
    #     "address1": "5420 Allison Street",
    #     "address2": "#202",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80002",
    #     "coordinates": {
    #         "lat": 39.7958727,
    #         "lng": -105.0858231
    #     }
    # },
    # {
    #     "address1": "20 Hacker Street",
    #     "address2": "#3",
    #     "city": "Worcester",
    #     "state": "MA",
    #     "postalCode": "01603",
    #     "coordinates": {
    #         "lat": 42.244896,
    #         "lng": -71.8175172
    #     }
    # },
    # {
    #     "address1": "732 Kevin Court",
    #     "address2": "",
    #     "city": "Oakland",
    #     "state": "CA",
    #     "postalCode": "94621",
    #     "coordinates": {
    #         "lat": 37.757904,
    #         "lng": -122.206479
    #     }
    # },
    # {
    #     "address1": "509 Franklin Street Northeast",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20017",
    #     "coordinates": {
    #         "lat": 38.9255849,
    #         "lng": -76.9990895
    #     }
    # },
    # {
    #     "address1": "23 Whitcomb Street",
    #     "address2": "",
    #     "city": "Springfield",
    #     "state": "VT",
    #     "postalCode": "05156",
    #     "coordinates": {
    #         "lat": 43.2987361,
    #         "lng": -72.4880749
    #     }
    # },
    # {
    #     "address1": "3377 Sandstone Court",
    #     "address2": "",
    #     "city": "Pleasanton",
    #     "state": "CA",
    #     "postalCode": "94588",
    #     "coordinates": {
    #         "lat": 37.680463,
    #         "lng": -121.860128
    #     }
    # },
    # {
    #     "address1": "14 Huntington Street",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.7772379,
    #         "lng": -72.518456
    #     }
    # },
    # {
    #     "address1": "2802 US Highway 98",
    #     "address2": "BLDG F",
    #     "city": "Mexico Beach",
    #     "state": "FL",
    #     "postalCode": "32456",
    #     "coordinates": {
    #         "lat": 29.9474344,
    #         "lng": -85.4170788
    #     }
    # },
    # {
    #     "address1": "412 Virginia Avenue",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40222",
    #     "coordinates": {
    #         "lat": 38.2538807,
    #         "lng": -85.6152334
    #     }
    # },
    # {
    #     "address1": "1644 New Jersey Avenue Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20001",
    #     "coordinates": {
    #         "lat": 38.91233,
    #         "lng": -77.017736
    #     }
    # },
    # {
    #     "address1": "832 51st Street Northeast",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20019",
    #     "coordinates": {
    #         "lat": 38.9008832,
    #         "lng": -76.9273381
    #     }
    # },
    # {
    #     "address1": "894 Windmill Park Lane",
    #     "address2": "",
    #     "city": "Mountain View",
    #     "state": "CA",
    #     "postalCode": "94043",
    #     "coordinates": {
    #         "lat": 37.399505,
    #         "lng": -122.077478
    #     }
    # },
    # {
    #     "address1": "9636 Morar Road",
    #     "address2": "",
    #     "city": "Panama City",
    #     "state": "FL",
    #     "postalCode": "32409",
    #     "coordinates": {
    #         "lat": 30.324968,
    #         "lng": -85.620589
    #     }
    # },
    # {
    #     "address1": "9472 Noble Way",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80007",
    #     "coordinates": {
    #         "lat": 39.8690661,
    #         "lng": -105.1784169
    #     }
    # },
    # {
    #     "address1": "618 Staley Avenue",
    #     "address2": "",
    #     "city": "Hayward",
    #     "state": "CA",
    #     "postalCode": "94541",
    #     "coordinates": {
    #         "lat": 37.6629263,
    #         "lng": -122.091801
    #     }
    # },
    # {
    #     "address1": "8704 Bayberry Place",
    #     "address2": "",
    #     "city": "Plantation",
    #     "state": "KY",
    #     "postalCode": "40242",
    #     "coordinates": {
    #         "lat": 38.2814983,
    #         "lng": -85.5918425
    #     }
    # },
    # {
    #     "address1": "2506 West Madison Street",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40211",
    #     "coordinates": {
    #         "lat": 38.253755,
    #         "lng": -85.7933322
    #     }
    # },
    # {
    #     "address1": "840 Inglewood Drive",
    #     "address2": "",
    #     "city": "West Sacramento",
    #     "state": "CA",
    #     "postalCode": "95605",
    #     "coordinates": {
    #         "lat": 38.591235,
    #         "lng": -121.524984
    #     }
    # },
    # {
    #     "address1": "10 Dalry Lane",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31419",
    #     "coordinates": {
    #         "lat": 31.941447,
    #         "lng": -81.160151
    #     }
    # },
    # {
    #     "address1": "3301 Nora Lane",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40220",
    #     "coordinates": {
    #         "lat": 38.199844,
    #         "lng": -85.61509
    #     }
    # },
    # {
    #     "address1": "8304 Glaser Lane",
    #     "address2": "",
    #     "city": "Louisville",
    #     "state": "KY",
    #     "postalCode": "40291",
    #     "coordinates": {
    #         "lat": 38.1437892,
    #         "lng": -85.6080724
    #     }
    # },
    # {
    #     "address1": "3720 West 86th Avenue",
    #     "address2": "APT F",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99502",
    #     "coordinates": {
    #         "lat": 61.142615,
    #         "lng": -149.949251
    #     }
    # },
    # {
    #     "address1": "3298 Chestnut Street Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20015",
    #     "coordinates": {
    #         "lat": 38.979577,
    #         "lng": -77.061088
    #     }
    # },
    # {
    #     "address1": "82 Fairfield Street",
    #     "address2": "",
    #     "city": "Manchester",
    #     "state": "CT",
    #     "postalCode": "06040",
    #     "coordinates": {
    #         "lat": 41.7673619,
    #         "lng": -72.53831
    #     }
    # },
    # {
    #     "address1": "3138 P Street Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20007",
    #     "coordinates": {
    #         "lat": 38.9091118,
    #         "lng": -77.0629963
    #     }
    # },
    # {
    #     "address1": "80 Locust Avenue",
    #     "address2": "#110",
    #     "city": "Worcester",
    #     "state": "MA",
    #     "postalCode": "01604",
    #     "coordinates": {
    #         "lat": 42.266896,
    #         "lng": -71.762913
    #     }
    # },
    # {
    #     "address1": "2715 Thornbrook Court",
    #     "address2": "",
    #     "city": "Odenton",
    #     "state": "MD",
    #     "postalCode": "21113",
    #     "coordinates": {
    #         "lat": 39.06450299999999,
    #         "lng": -76.727459
    #     }
    # },
    # {
    #     "address1": "3579 2nd Avenue",
    #     "address2": "",
    #     "city": "Edgewater",
    #     "state": "MD",
    #     "postalCode": "21037",
    #     "coordinates": {
    #         "lat": 38.91283200000001,
    #         "lng": -76.5224099
    #     }
    # },
    # {
    #     "address1": "6739 Taft Court",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80004",
    #     "coordinates": {
    #         "lat": 39.8189901,
    #         "lng": -105.1325295
    #     }
    # },
    # {
    #     "address1": "1528 Stafford Avenue",
    #     "address2": "",
    #     "city": "Hayward",
    #     "state": "CA",
    #     "postalCode": "94541",
    #     "coordinates": {
    #         "lat": 37.680081,
    #         "lng": -122.074569
    #     }
    # },
    # {
    #     "address1": "2024 Merrily Drive",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36111",
    #     "coordinates": {
    #         "lat": 32.3328739,
    #         "lng": -86.28072999999999
    #     }
    # },
    # {
    #     "address1": "2034 Fairfax Road",
    #     "address2": "",
    #     "city": "Annapolis",
    #     "state": "MD",
    #     "postalCode": "21401",
    #     "coordinates": {
    #         "lat": 38.9734343,
    #         "lng": -76.5357427
    #     }
    # },
    # {
    #     "address1": "1430 East Audubon Road",
    #     "address2": "",
    #     "city": "Montgomery",
    #     "state": "AL",
    #     "postalCode": "36111",
    #     "coordinates": {
    #         "lat": 32.328226,
    #         "lng": -86.28300399999999
    #     }
    # },
    # {
    #     "address1": "3652 East Blue Stone Drive",
    #     "address2": "",
    #     "city": "Fayetteville",
    #     "state": "AR",
    #     "postalCode": "72764",
    #     "coordinates": {
    #         "lat": 36.139309,
    #         "lng": -94.1078069
    #     }
    # },
    # {
    #     "address1": "3302 Woodland Park Drive",
    #     "address2": "#APT 000001",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99517",
    #     "coordinates": {
    #         "lat": 61.190512,
    #         "lng": -149.927286
    #     }
    # },
    # {
    #     "address1": "1771 Daisey Court",
    #     "address2": "",
    #     "city": "Millersville",
    #     "state": "MD",
    #     "postalCode": "21108",
    #     "coordinates": {
    #         "lat": 39.044662,
    #         "lng": -76.64797399999999
    #     }
    # },
    # {
    #     "address1": "406 East Waldburg Street",
    #     "address2": "",
    #     "city": "Savannah",
    #     "state": "GA",
    #     "postalCode": "31401",
    #     "coordinates": {
    #         "lat": 32.064691,
    #         "lng": -81.092321
    #     }
    # },
    # {
    #     "address1": "11843 North 60th Avenue",
    #     "address2": "",
    #     "city": "Glendale",
    #     "state": "AZ",
    #     "postalCode": "85304",
    #     "coordinates": {
    #         "lat": 33.594584,
    #         "lng": -112.188319
    #     }
    # },
    # {
    #     "address1": "9515 West 74th Avenue",
    #     "address2": "",
    #     "city": "Arvada",
    #     "state": "CO",
    #     "postalCode": "80005",
    #     "coordinates": {
    #         "lat": 39.831067,
    #         "lng": -105.103952
    #     }
    # },
    # {
    #     "address1": "119 Antioch Pike",
    #     "address2": "",
    #     "city": "Nashville",
    #     "state": "TN",
    #     "postalCode": "37211",
    #     "coordinates": {
    #         "lat": 36.10072,
    #         "lng": -86.72331
    #     }
    # },
    # {
    #     "address1": "1157 1st Street Northwest",
    #     "address2": "",
    #     "city": "Washington",
    #     "state": "DC",
    #     "postalCode": "20001",
    #     "coordinates": {
    #         "lat": 38.90538280000001,
    #         "lng": -77.0121662
    #     }
    # },
    # {
    #     "address1": "3578 Galindo Street",
    #     "address2": "",
    #     "city": "Oakland",
    #     "state": "CA",
    #     "postalCode": "94601",
    #     "coordinates": {
    #         "lat": 37.783471,
    #         "lng": -122.2149729
    #     }
    # },
    # {
    #     "address1": "12800 Saunders Road",
    #     "address2": "",
    #     "city": "Anchorage",
    #     "state": "AK",
    #     "postalCode": "99516",
    #     "coordinates": {
    #         "lat": 61.10499799999999,
    #         "lng": -149.746856
    #     }
    # }
]

# 10.times do
Lead.populate 500 do |l|
    l.name = Faker::FunnyName.name
    l.company_name = Faker::Company.name
    l.email = Faker::Internet.email
    l.phone = Faker::PhoneNumber.cell_phone
    l.project_name = Faker::Book.title
    l.project_description = Faker::Marketing.buzzwords
    l.department = Faker::Job.field
    l.message = Faker::IndustrySegments.industry
    l.attachment = Faker::Company.logo
    l.created_at = Faker::Date.between(from: '2002-02-20', to: '2018-09-25')
    l.updated_at = Faker::Date.between(from: '2018-09-26', to: '2022-07-06')
end



addressList.each do |requiredAddress|
    users = User.create!(
        created_at: Faker::Date.between(from: '2002-02-20', to: '2018-09-25'),
        updated_at: Faker::Date.between(from: '2018-09-26', to: '2022-07-06'),
        is_admin: false,
        email: Faker::Internet.unique.free_email,
        encrypted_password: "",
        password: "password123"
    )
    # puts "============================"
    # puts requiredAddress[:address1]
    # puts "============================"
    customer = Customer.create!(
        user_id: users[:id],
        company_name: Faker::Company.name,
        # address: address,
        customer_created_date: Faker::Date.between(from: '1999-02-20', to: '2000-02-20'),
        contact_name: Faker::FunnyName.name,
        phone_number: Faker::PhoneNumber.cell_phone,
        email: Faker::Internet.free_email,
        company_description: Faker::Company.industry,
        service_tech_name: Faker::Name.name,
        service_tech_phone: Faker::PhoneNumber.cell_phone,
        service_tech_email: Faker::Internet.free_email,
        created_at: Faker::Date.between(from: '2002-02-20', to: '2018-09-25'),
        updated_at: Faker::Date.between(from: '2018-09-26', to: '2022-07-06')
        # index_customers_on_address_id
        # index_customers_on_user_id
    )

    quotes = Quote.create(
        user_id: users[:id],
        amount_of_elevators: Faker::Number.number(digits: 2),
        amount_of_floors: Faker::Number.number(digits: 2),
        final_price: Faker::Number.number(digits: 6),
        building_type: ["Residential", "Corporate", "Commercial", "Hybrid"].sample(1),
        elevator_type: ["Standard", "Premium", "Excelium"].sample(1),
        installation_price: ["13%", "10%", "16%"].sample(1),
        created_at: Faker::Date.between(from: '2002-02-20', to: '2018-09-25'),
        updated_at: Faker::Date.between(from: '2018-09-26', to: '2022-07-06')
    )

    
    address = Address.create!(
        customer_id: customer[:id],
        address_type: random_address_type(),
        address_status: random_address_status,
        entity: random_address_entity,
        suite_or_apartment: ["Suite", "Apartment"].sample(1),
        street_address: requiredAddress[:address1],
        city: requiredAddress[:city],
        postal_code: requiredAddress[:postalCode],
        country: "US",
        notes: Faker::Quote.matz,
        created_at: Faker::Date.between(from: '2002-02-20', to: '2018-09-25'),
        updated_at: Faker::Date.between(from: '2018-09-26', to: '2022-07-06')
    )
    

    buildings = Building.create!(
        customer_id: customer[:id],
        # address = requiredAddress["address1"]
        # can be fake address
        building_admin_name: Faker::Name.name,
        building_admin_email: Faker::Internet.free_email,
        building_admin_phone: Faker::PhoneNumber.cell_phone,
        building_tech_name: Faker::Name.name,
        building_tech_email: Faker::Internet.free_email,
        building_tech_phone: Faker::PhoneNumber.cell_phone,
        created_at: Faker::Date.between(from: '2002-02-20', to: '2018-09-25'),
        updated_at: Faker::Date.between(from: '2018-09-26', to: '2022-07-06')
        # customer_id index_buildings_on_customer_id
    )

    BuildingDetail.create!(
        building_id: buildings[:id],
        created_at: Faker::Date.between(from: '2002-02-20', to: '2018-09-25'),
        updated_at: Faker::Date.between(from: '2018-09-26', to: '2022-07-06'),
        # index_batteries_on_building_id
    )

    batteries = Battery.create!(
        building_id: buildings[:id],
        building_type: random_building_type,
        battery_status: random_battery_status,
        date_of_commission: Faker::Date.between(from: '2002-02-20', to: '2018-09-25'),
        last_inspection_date: Faker::Date.between(from: '2018-09-26', to: '2022-07-06'),
        operations_certificate: random_battery_certificate,
        info: Faker::Quote.famous_last_words,
        notes: Faker::Quote.matz,
        created_at: Faker::Date.between(from: '2002-02-20', to: '2018-09-25'),
        updated_at: Faker::Date.between(from: '2018-09-26', to: '2022-07-06')
        # index_batteries_on_building_id
    )

    columns = Column.create!(
        battery_id: batteries[:id],
        number_of_floors_served: Faker::Number.between(from: 2, to: 90),
        column_status: random_column_status,
        info: Faker::Quote.famous_last_words,
        notes: Faker::Quote.matz,
        created_at: Faker::Date.between(from: '2002-02-20', to: '2018-09-25'),
        updated_at: Faker::Date.between(from: '2018-09-26', to: '2022-07-06')
        # index_columns_on_battery_id
    )

    Elevator.create!(
        column_id: columns[:id],
        serial_number: Faker::IDNumber.chilean_id,
        elevator_model: random_elevator_type,
        elevator_status: random_elevator_status,
        elevator_commission_date: Faker::Date.between(from: '2002-02-20', to: '2018-09-25'),
        elevator_last_inspection_date: Faker::Date.between(from: '2018-09-26', to: '2022-07-06'),
        elevator_inspection_certificate: random_battery_certificate,
        info: Faker::Quote.famous_last_words,
        notes: Faker::Quote.matz,
        created_at: Faker::Date.between(from: '2002-02-20', to: '2018-09-25'),
        updated_at: Faker::Date.between(from: '2018-09-26', to: '2022-07-06')
        # index_elevators_on_column_id
    )
end