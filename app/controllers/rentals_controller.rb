class RentalsController < ApplicationController
    def index
        @rentals = Rental.all
    end

    def show 
        @rental = Rental.find_by id: params[:id]
    end

    def new
        @rental = Rental.new
    end

    def create
        
        em = Rental.new(rental_params)
        if em.save
          redirect_to rentals_path
        else 
            render :new
        end
    end
private 
    def set_rental
        @rental = Rental.find_by id:params[:id]
    end
    def rental_params
     params.require(:rental).permit :name, :size , :price, :color, :amount
    end
    
end
