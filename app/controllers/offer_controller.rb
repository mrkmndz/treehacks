class OfferController < ApplicationController
    def index
    end
    def new
        offer = Offer.new
        offer.roomNum = 1
    end
    def create
        @offer = Request.new(params[:request].permit(:room,:offerer)) 
        if @offer.save then
            redirect_to(:action => :index)
        else
           render :action => :new 
        end
    end
    def destroy
        @request = Request.find(params[:id])
        if @request.destroy then
            redirect_to(:action => :index)
        else
            render :action => :show
        end
    end
end
