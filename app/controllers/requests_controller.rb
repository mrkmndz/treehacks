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
        @request = Request.new(params.require(:request).permit(:requester, :email))
        if @request.save then
            redirect_to "requests/show"
        else
            render :action => :new
        end
    end
    def update
    end
    def destroy
        @request = Request.find(params[:id])
        @request.destroy

        redirect_to requests_path
    end
end
