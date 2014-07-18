class IndexController < ApplicationController

	skip_before_action :verify_authenticity_token, only: [:show]

	def welcome
		@case = Case.order('id desc').limit 10
	end

	def about_us
		@company_intro = CompanyIntro.first
	end

	def case_show
		@case = Case.find params[:id]		
	end

	def case_list
		@cases = Case.order('id desc').limit 100
	end

	def contact

	end


end