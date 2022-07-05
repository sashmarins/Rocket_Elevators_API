class QuotesController < ApplicationController
    def index
        @quotes = Quote.all
    end

    def show
        @quote = Quote.find(params[:id])
    end


    def new
    end

    def create
        @quote = Quote.new(quote_params)
 
        @quote.save
        redirect_to @quote
    end

    private
        def quote_params
            params.require(:quote).permit(:amount_of_elevators, :amount_of_floors, :final_price, :building_type, :elevator_type, :installation_price) #?????
            params.fetch(:quote, {})
        end

end
