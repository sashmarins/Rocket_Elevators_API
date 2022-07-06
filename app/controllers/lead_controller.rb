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

    def create 
        contact_name = params["name"]
        email = params["email"]
        phone = params["phone"]
        company_name = params["company"]
        project_name = params["project_name"]
        project_description = params["project_description"]
        department = params["department"]
        message = params["message"]
        attachment = params["attachment"]

        @lead = Lead.new(lead_params)
        @lead.name = contact_name
        @lead.email = email
        @lead.phone = phone
        @lead.company_name = company_name
        @lead.project_name = project_name
        @lead.project_description = project_description
        @lead.department = department
        @lead.message = message
        @lead.attachment = attachment

        @lead.save!

        if @lead.save
        redirect_back fallback_location: root_path, notice: "Success!"
        end

    end

    private
    def lead_params
        params.fetch(:lead, {})
    end
end
