class RequestsController < ApplicationController
    before_action :require_login
    def index
        @requests = Request.all
    end
    def new
    end
    def create
        @request = Request.new() 
        @request.requester = current_user.email
        if @request.save then
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
