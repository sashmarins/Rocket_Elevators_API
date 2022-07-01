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
            params.require(:quote).permit(:title, :text) #?????
        end

end
