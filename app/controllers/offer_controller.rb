class OfferController < ApplicationController
    before_action :require_login
    def index
    end
    def new
        @offer = Offer.new
        @offer.roomNum = 1
    end
    def create
        @offer = Offer.new(params[:offer].permit(:room,:offerer)) 
        if @offer.save then
            redirect_to(:action => :index)
        else
           render :action => :new 
        end
    end
    def destroy
        @offer = Offer.find(params[:id])
        if @offer.destroy then
            redirect_to(:action => :index)
        else
            render :action => :show
        end
    end
end
