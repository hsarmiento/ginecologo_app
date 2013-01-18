class StaticPagesController < ApplicationController
	def index
		@clinics = Clinic.all
	end
end
