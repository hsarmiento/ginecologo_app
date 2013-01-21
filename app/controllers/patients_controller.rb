class PatientsController < ApplicationController
	def new
		@patient = Patient.new
	end

	def create
		@patient = Patient.new(params[:patient])
		if @patient.save
			flash[:success] = "Tu cuenta ha sido creada con exito"
			redirect_to root_url
		else
			render 'new'
		end
	end
end
