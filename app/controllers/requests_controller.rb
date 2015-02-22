class RequestsController < ApplicationController
    def index
        @requests = Request.all
    end
    def show
        @request = Request.find(params[:id])
    end
    def new
        @request = Request.new
    end
    def edit
    end
    def create
        @request = Request.new(params[:request].permit(:requester,:email)) 
        if @request.save then
            redirect_to(:action => :index)
        else
           render :action => :new 
        end
    end
    def update
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
