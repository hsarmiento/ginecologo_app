class PatientsController < ApplicationController
	before_filter :signed_in_patient, only: [:show]
	before_filter :correct_patient, only: [:show]

	def new
		if signed_in?
			redirect_to current_patient
		else
			@patient = Patient.new
		end
	end

	def create
		@patient = Patient.new(params[:patient])
		if @patient.save
			sign_in @patient
			flash.now[:success] = "Tu cuenta ha sido creada con exito"
			redirect_to @patient
		else
			render 'new'
		end
	end

	def show
		@patient = Patient.find(params[:id])
	end

	private

	def signed_in_patient
		unless signed_in?
			store_location
			flash[:notice] = "Favor, ingresar email y contrasena"
			redirect_to login_url
		end
	end

	def correct_patient
		@patient = Patient.find(params[:id])
		unless current_patient?(@patient)
			redirect_to root_path
		end
	end
end
