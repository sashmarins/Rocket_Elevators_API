class GoogleController < ApplicationController
    # before_action: set_customer, only: [ :show, :edit, :update, :destroy ]

    #GET customers
    def index
        @customers = customer.all
        @hash = Map.build_markers(@customers) do |customer, marker|
            marker.lat customer.latitude
            marker.lng customer.longitude
            marker.infowindow customer.title
        end
    end

    def show
    end
    #GET NEW customers
    def new
        @customer =customer.new
    end
    #GET customers EDIT
    def edit
    end

    #POST customers
    def create 
        @customer = customer.new(customer_params)

        respond_to do |format|
            if @customer.save
                format.html { redirect_to @customer, notice: 'customer was successfully crated.' }
                format.json { render :show, status: :created, location: @customer }
            else
                format.html { render :new } 
                format.json { render json: @customer.errors, status: :unprocessable_entity }
            end
        end
    end

end
