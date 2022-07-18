class GmapsController < ApplicationController

    def info
        @info_array = []

        Customer.all.each do |customer|

        @info_array.push(
            lat: customer.address.latitude,
            lng: customerr.address.longitude,
            address: customer.address.street_address
        )
        end
        
    end

end
