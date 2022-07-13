require 'rest_client'
require 'json'

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
        freshdesk_domain = ENV["BASE_URL"]
        user_name_or_api_key =  ENV["FRESH_KEY"]
        password_or_x = "X"
        
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
            redirect_back fallback_location: root_path, notice: "Your contact request has been sent successfully!"

            multipart_payload =  {
                status: 2,
                priority: 1,
                type: "Question",
                email: @lead.email,
                phone: @lead.phone,
                cc_emails: ["support@codeboxx777.freshdesk.com"],    
                subject: "new request #{@lead.name} from #{@lead.company_name} #{Time.now}",
                description: "#{@lead.name} from #{@lead.company_name} can be reached at email #{@lead.email} and at phone number #{@lead.phone}. 
                            #{@lead.department} has a project named #{@lead.project_name} which would require contribution from Rocket Elevators. <br/>
                            Project description: #{@lead.project_description} <br/>
                            Attached Message: #{@lead.message}"
                
                # attachments: [@lead.attachment]
                }
                
                freshdesk_api_path = 'api/v2/tickets'
                freshdesk_api_url  = "https://codeboxx777.freshdesk.com/#{freshdesk_api_path}"

                site = RestClient::Resource.new(freshdesk_api_url, user_name_or_api_key, password_or_x)
 
                begin
                    response = site.post(multipart_payload.to_json, {content_type: :json, accept: :json})
                    # RestClient.post freshdesk_api_url, multipart_payload.to_json, {content_type: :json, accept: :json}
                    puts "response_code: #{response.code} \nLocation Header: #{response.headers[:Location]} \nresponse_body: #{response.body} \n"
                  rescue RestClient::Exception => exception
                    puts 'API Error: Your request is not successful. If you are not able to debug this error properly, mail us at support@freshdesk.com with the follwing X-Request-Id'
                    puts "X-Request-Id : #{exception.response.headers[:x_request_id]}"
                    puts "Response Code: #{exception.response.code} \nResponse Body: #{exception.response.body} \n"
                end
        end
                
    end

    private
    def lead_params
        params.fetch(:lead, {})
    end
end
