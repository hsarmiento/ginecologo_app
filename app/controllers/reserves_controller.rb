class ReservesController < ApplicationController
	def new
		@doctor = Doctor.find(params[:doctor_id])
		puts @doctor.to_yaml
		@schedule = @doctor.schedules
	end
end
