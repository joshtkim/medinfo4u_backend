class SymptomsController < ApplicationController

    def index
        @symptoms = Symptom.all
        render json: @symptoms
    end
    
    def show
        @symptom = Symptom.find(params[:id])
        render json: @symptom
    end

    def create
        @symptom = Symptom.create(strong_params)
        render json: @symptom
    end

    def edit
        @symptom = Symptom.find(params[:id])
    end
    
    def update
        @symptom = Symptom.find(params[:id])

        @symptom.update(strong_params)
        render json: @symptom
    end

    def destroy
        @symptom = Symptom.find(params[:id])
        @symptom.destroy
        render json: {message: "Symptom Deleted"}        
    end

    private

    def strong_params
        params.require(:symptom).permit(:appointment_id, :location, :visitor_symptom, :observation, :note, :public)
    end

end