# require 'aws-sdk-polly'
# module PollyHelper
    user_name = current_user.employee.first_name
    amount_of_elvtrs = Elevator.count
    amount_of_bldngs = Building.count.to_s
    amount_of_cstmrs = Customer.count.to_s
    inactive_elvtrs = Elevator.where(elevator_status: "Inactive").count
    current_quotes = Quote.count
    current_leads = Lead.count.to_s
    amount_of_bttrs = Battery.count.to_s
    amount_of_cities = Address.city.count
    

    polly_text = " Greetings,#{user_name}! There are currently #{amount_of_elvtrs} elevators deployed in #{amount_of_bldngs} buildings of your #{amount_of_cstmrs} customers.
                Currently, #{inactive_elvtrs} elevators are not in Running Status and are being serviced.
                You currently have #{current_quotes} quotes awaiting processing and #{current_leads} leads in your contact requests.
                #{amount_of_bttrs} batteries are deployed across #{amount_of_cities} cities."


    def polly_speak 
        polly = Aws::Polly::Client.new

        resp = polly.synthesize_speech({
            output_format: "mp3",
            text: "#{polly_text}",
            voice_id: "Joanna",
            response_target: "./speech.mp3"
        })
      
        IO.copy_stream(resp.audio_stream, "#{params[:text]}.mp3") 
        send_file "#{params[:text]}.mp3"
    end
end


# Greetings to the logged users!
# There are currently XXX elevators deployed in the XXX buildings of your XXX customers
# Currently, XXX elevators are not in Running Status and are being serviced
# You currently have XXX quotes awaiting processing
# You currently have XXX leads in your contact requests
# XXX Batteries are deployed across XXX cities

