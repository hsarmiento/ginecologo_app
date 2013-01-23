class SessionsController < ApplicationController
	def new
	end

	def create
		patient = Patient.find_by_email(params[:session][:email].downcase)
		if patient && patient.authenticate(params[:session][:password])
			sign_in patient
			redirect_back_or patient
		else
			flash.now[:error] = 'Usuario o contrasena invalidos'
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url	
	end
end
