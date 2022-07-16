module RailsAdmin
    class RAdminController < RailsAdmin::MainController

        skip_before_filter :get_model
        skip_before_filter :get_object
        skip_before_filter :check_for_cancel


        def polly
            puts "=============POLLY============"
            polly = Aws::Polly::Client.new
            
            resp = polly.synthesize_speech({
                output_format: "mp3",
                text: "Rocket Elevators, testing again!",
                voice_id: "Joanna",
                # response_target: "/public/speech2.mp3"
            
                })
                IO.copy_stream(resp.audio_stream, "speech3.mp3")
                File.rename "speech3.mp3", "public/speech3.mp3"
        end
    end
end