# frozen_string_literal: true

module RailsAdmin
    module Config
        module Actions
                class Google < RailsAdmin::Config::Actions::Base
                    RailsAdmin::Config::Actions.register(self)

                            register_instance_option :root? do
                                true
                            end

                            register_instance_option :breadcrumb_parent do
                                nil
                            end

                            register_instance_option :auditing_versions_limit do
                                100
                            end

                            register_instance_option :controller do 
                                proc do 
                                        @info_array = []
                                
                                        Customer.all.each do |customer|
                                            Address.all.each do |address|
                                                if customer.id == address.customer_id

                                
                                        @info_array.push(
                                            lat: address.latitude,
                                            lng: address.longitude,
                                            address: address.street_address
                                        )

                                    end
                                end
                            end
                                end
                            end

                            register_instance_option :route_fragment do
                                'google.html.erb'
                            end

                            register_instance_option :link_icon do
                                'fas fa-home'
                            end

                            register_instance_option :statistics? do
                                true
                            end

                            register_instance_option :history? do
                                true
                            end
                end
         end
    end
end