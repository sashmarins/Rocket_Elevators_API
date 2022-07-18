# # frozen_string_literal: true

# module RailsAdmin
#     module Config
#         module Actions
#                 class Amazon < RailsAdmin::Config::Actions::Base
#                     RailsAdmin::Config::Actions.register(self)

#                             register_instance_option :root? do
#                                 true
#                             end

#                             register_instance_option :breadcrumb_parent do
#                                 nil
#                             end

#                             register_instance_option :auditing_versions_limit do
#                                 100
#                             end

#                             register_instance_option :route_fragment do
#                                 'amazon.html.erb'
#                             end

#                             register_instance_option :link_icon do
#                                 'fas fa-home'
#                             end

#                             register_instance_option :statistics? do
#                                 true
#                             end

#                             register_instance_option :history? do
#                                 true
#                             end
#                 end
#          end
#     end
# end



# /lib/rails_admin/google.rb

module RailsAdmin
  module Config
    module Actions
      class Amazon < RailsAdmin::Config::Actions::Base
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
            puts "=============POLLY============"
            user_name = current_user.employee.first_name
            amount_of_elvtrs = Elevator.count
            amount_of_bldngs = Building.count
            amount_of_cstmrs = Customer.count
            inactive_elvtrs = Elevator.where(elevator_status: "Inactive").count
            current_quotes = Quote.count
            current_leads = Lead.count
            amount_of_bttrs = Battery.count
            amount_of_cities = Address.count

            polly_text = " Greetings,#{user_name}! There are currently #{amount_of_elvtrs} elevators deployed in #{amount_of_bldngs} buildings of your #{amount_of_cstmrs} customers.
            Currently, #{inactive_elvtrs} elevators are not in Running Status and are being serviced.
            You currently have #{current_quotes} quotes awaiting processing and #{current_leads} leads in your contact requests.
            #{amount_of_bttrs} batteries are deployed across #{amount_of_cities} cities. Have a wonderful shift!"

            polly = Aws::Polly::Client.new

            resp = polly.synthesize_speech({
                output_format: "mp3",
                text: "#{polly_text}",
                voice_id: "Joanna",
                # response_target: "/public/speech2.mp3"
            
                })
                IO.copy_stream(resp.audio_stream, "speech3.mp3")
                File.rename "speech3.mp3", "public/speech3.mp3"
          end
        end

        register_instance_option :route_fragment do
          'amazon.html.erb'
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