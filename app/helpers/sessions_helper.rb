module SessionsHelper

	def sign_in(patient)
		cookies.permanent[:remember_token] = patient.remember_token
		self.current_patient = patient
	end

	def signed_in?
		!current_patient.nil?
	end

	def current_patient=(patient)
		@current_patient=patient
	end

	def current_patient
		@current_patient ||= Patient.find_by_remember_token(cookies[:remember_token])
	end

	def current_patient?(patient)
		patient == current_patient
		
	end

	def sign_out
		self.current_patient = nil
		cookies.delete(:remember_token)
	end

	def redirect_back_or(default)
		redirect_to(session[:return_to] || default)
		session.delete(:return_to)
	end

	def store_location
		session[:return_to] = request.url
	end
end
