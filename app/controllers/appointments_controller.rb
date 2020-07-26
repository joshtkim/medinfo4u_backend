class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all
        render json: @appointments
    end
    
    def show
        @appointment = Appointment.find(params[:id])
        render json: @appointment
    end

    def create
        doc_id = Doctor.doc_appts
        nurse_id = Nurse.nurse_appts
        @appointment = Appointment.create(visitor_id: strong_params[:visitor_id], date: strong_params[:date], time: strong_params[:time], doctor_id: doc_id, nurse_id: nurse_id, observation: '', note: '', public: '', visitor_symptom: strong_params[:visitor_symptom])
        render json: @appointment
    end

    def edit
        @appointment = Appointment.find(params[:id])
    end
    
    def update
        @appointment = Appointment.find(params[:id])

        @appointment.update(strong_params)
        render json: @appointment
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        render json: {message: "Appointment Deleted"}        
    end

    private

    def strong_params
        params.require(:appointment).permit(:doctor_id, :nurse_id, :visitor_id, :visitor_symptom, :date, :time, :observation, :note, :public)
    end


end