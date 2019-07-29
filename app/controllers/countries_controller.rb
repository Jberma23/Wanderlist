class CountriesController < ApplicationController\
    before_action: :find_country, only: [:show]
    
    def index 
    end 
    def show
    end 
    
    private

    def country_params
        params.require(:country).permit(:name, :currency)
    end 
    def find_country 
        @country = Country.find_by(params[:id])
    end
end
