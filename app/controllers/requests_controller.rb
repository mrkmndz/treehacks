class RequestsController < ApplicationController
    before_action :require_login
    def index
        @requests = Request.all
    end
    def new
        @request = Request.new
    end
    def create
        @request = Request.new(params[:request].permit(:requester,:email)) 
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
