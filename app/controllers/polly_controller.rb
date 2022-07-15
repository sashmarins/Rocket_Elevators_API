# require 'aws-sdk-polly'
# class PollyController < ApplicationController
#     def polly_speak 
        
#         polly = Aws::Polly::Client.new
        
#         polly.synthesize_speech({
#             output_format: "mp3",
#             text: "Rocket Elevators",
#             voice_id: "Joanna",
#             response_target: "/public/speech.mp3"
        
#             # IO.copy_stream(resp.audio_stream, "speech.mp3")
#         })
    
#     end
# end

