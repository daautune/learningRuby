class RentalsController < ApplicationController
    def index
      @rentals = rental.all
    end
    def show 
      @rental = Rental.find_by id: params[:id]
    end
    def new
      @rental = Rental.new
    end
  
    def edit
      @rental = Rental.find_by id: params[:id]
    end
    def create
      
        em = Rental.new(rental_params)
        if em.save
        redirect_to rentals_path
        else 
          render :new
        end
    end