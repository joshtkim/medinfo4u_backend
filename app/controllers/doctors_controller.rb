class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all
        render json: @doctors
    end
    
    def show
        @doctor = Doctor.find(params[:id])
        render json: @doctor
    end

    def create
        @doctor = Doctor.create(strong_params)
        render json: @doctor
    end

    def edit
        @doctor=Doctor.find(params[:id])
    end
    
    def update
        @doctor=Doctor.find(params[:id])

        @doctor.update(strong_params)
        render json: @doctor
    end

    def destroy
        @doctor = Doctor.find(params[:id])
        @doctor.destroy
        render json: {message: "Doctor Deleted"}        
    end

    def username
        @doctor = Doctor.find_by(username: params[:username])
        render json: @doctor
    end

    def login
        @doctor = Doctor.find_by(username: params[:username])
        render json: @doctor
    end


    private

    def strong_params
        params.require(:doctor).permit(:username, :name, :dob, :age, :phone, :ext, :email, :language, :specialty)
    end

end
