require 'aws-sdk-polly'
class PagesController < ApplicationController
    # before_action :authorize!, :login
    rescue_from CanCan::AccessDenied do
        flash[:error] = 'Access denied!'
        redirect_to root_path
      end
    def index
    end

    def residential
    end

    def commercial
    end

    def quote
    end

    def polly
        polly = Aws::Polly::Client.new
        
        resp = polly.synthesize_speech({
            output_format: "mp3",
            text: "Rocket Elevators, yes yes",
            voice_id: "Joanna",
            # response_target: "/public/speech2.mp3"
        
            })
            IO.copy_stream(resp.audio_stream, "speech3.mp3")
            File.rename "speech3.mp3", "public/speech3.mp3"
    end

    def reado
         
    end
   
    def login
        if user.admin?
        link_to "/admin"
        end
    end

    # def check_if_admin
    #     redirect_to root_path unless current_user.is_admin == true
    # end

    # RailsAdmin.config do |config|
    # end
end
