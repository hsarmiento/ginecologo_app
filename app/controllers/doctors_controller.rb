class DoctorsController < ApplicationController
	def index
		@clinic = Clinic.find(params[:clinic_id])
		@doctors = @clinic.doctors.all
	end

	def show
		@clinic = Clinic.find(params[:clinic_id])
		@doctor = Doctor.find(params[:id])
	end
end
