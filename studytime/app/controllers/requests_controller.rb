class RequestsController < ActionController
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
        @request = Request.new(params.require(:request).permit(:requester, :room))

        @request.save

        redirect_to requests_path 
    end
    def update
    end
    def destroy
        @request = Request.find(params[:id])
        @request.destroy

        redirect_to requests_path
    end
end
