class QuotesController < ApplicationController
    def index
        @quotes = Quote.all
    end

    def show
        @quote = Quote.find(params[:id])
    end

    def new
        @quote = Quote.new
    end

    def create
        building_type = params["building-type"]
        amount_of_floors = params["number-of-floors-input"]
        amount_of_elevators = params["elevator-amount"]
        final_price = params["final-price"]
        elevator_type = params[:product]
        installation_price = params["installation-fees"]

        @quote = Quote.new(quote_params)
        @quote.building_type = building_type
        @quote.amount_of_floors = amount_of_floors
        @quote.amount_of_elevators = amount_of_elevators
        @quote.final_price = final_price
        @quote.elevator_type = elevator_type
        @quote.installation_price = installation_price


        if user_signed_in?
            @quote.user_id = current_user.id
            @quote.save!
        
                if @quote.save
                    redirect_back fallback_location: root_path, notice: "Success!"
                end
        else
            redirect_back fallback_location: root_path, notice: "Please sign up or sign in before submitting a quote!"
        end

    end

    private
        def quote_params
            params.fetch(:quote, {})
        end

end
