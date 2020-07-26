class VisitorsController < ApplicationController

    def index
        @visitors = Visitor.all
        render json: @visitors
    end
    
    def show
        @visitor = Visitor.find(params[:id])
        render json: @visitor
    end

    def create
        @visitor = Visitor.create(strong_params)
        render json: @visitor
     
    end

    def edit
        @visitor=Visitor.find(params[:id])
     end
     
     def update
         @visitor=Visitor.find(params[:id])

        @visitor.update(strong_params)
        render json: @visitor
    end

    def destroy
        @visitor = Visitor.find(params[:id])
        @visitor.destroy
        render json: {message: "Visitor Deleted"}
    end

    def username
        @visitor = Visitor.find_by(username: params[:username])
        render json: @visitor
    end

    def login
        @visitor = Visitor.find_by(username: params[:username])
        render json: @visitor
    end


    private

    def strong_params
        params.require(:visitor).permit(:username, :name, :dob, :age, :phone, :email, :language, :healthcare)
    end

end
