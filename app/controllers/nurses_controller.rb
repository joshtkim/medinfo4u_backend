class NursesController < ApplicationController

    def index
        @nurses = Nurse.all
        render json: @nurses
    end
    
    def show
        @nurse = Nurse.find(params[:id])
        render json: @nurse
    end

    def create
        @nurse = Nurse.create(strong_params)
        render json: @nurse
     
    end

    def edit
        @nurse=Nurse.find(params[:id])
     end
     
     def update
         @nurse=Nurse.find(params[:id])

        @nurse.update(strong_params)
        render json: @nurse
    end

    def destroy
        @nurse = Nurse.find(params[:id])
        @nurse.destroy
        render json: {message: "Nurse Deleted"}
    end

    def username
        @nurse = Nurse.find_by(username: params[:username])
        render json: @nurse
    end

    def login
        @nurse = Nurse.find_by(username: params[:username])
        render json: @nurse
    end


    private

    def strong_params
        params.require(:nurse).permit(:username, :name, :dob, :age, :phone, :ext, :email, :language, :specialty)
    end

end