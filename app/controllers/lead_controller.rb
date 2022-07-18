require 'sendgrid-ruby'
include SendGrid
require 'rubygems'
require 'nokogiri' 

class LeadController < ApplicationController
    def index 
        @lead = Lead.all
    end

    def show 
        @lead = Lead.find(params[:id])
    end

    def new
        @lead = Lead.new
    end

    # def confirmation_email
    #     attachments.inline["R2.png"] = File.read("#{R2.png}/app/views/layouts/R2.png")
    #     # mail(to: email, subject: 'test subject')
    # end
    
    def create 

        @lead = Lead.new(lead_params)

        @lead.name = params["name"]
        @lead.email = params["email"]
        @lead.phone = params["phone"]
        @lead.company_name = params["company"]
        @lead.project_name = params["project_name"]
        @lead.project_description = params["project_description"]
        @lead.department = params["department"]
        @lead.message = params["message"]
        # @lead.attachment = params["attachment"] || ""

        @lead.save!
        if @lead.save
        redirect_back fallback_location: root_path, notice: "Success!"
        end
        
    end

    private
    def lead_params
            if params[:lead] == nil
                params.fetch(:lead, {})
            else
                params.require(:lead).permit(:name, :email, :phone, :company_name, :project_name, :project_description, :department, :message, :attachment)
            end
    end
end
