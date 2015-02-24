class OfferController < ApplicationController
    before_action :require_login
    def index
    end
    def new
        @roomNum=params[:id]
    end
    def create
        @offer = Offer.new() 
        @offer.offerer = current_user.email
        @offer.roomNum = params[:id]
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
