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

        @lead = Lead.new(lead_params)

        @lead.name = params["name"]
        @lead.email = params["email"]
        @lead.phone = params["phone"]
        @lead.company_name = params["company"]
        @lead.project_name = params["project_name"]
        @lead.project_description = params["project_description"]
        @lead.department = params["department"]
        @lead.message = params["message"]

        @lead.save!
        if @lead.save
        redirect_back fallback_location: root_path, notice: "Success!"
        end

    end

    private
    def lead_params
        params.require(:lead).permit(:name, :email, :phone, :company_name, :project_name, :project_description, :department, :message, :attachment)
    end
end
