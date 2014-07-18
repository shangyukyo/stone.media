#encoding: utf-8
class Admin::CompanyController < Admin::ApplicationController
	layout 'admin'

  def intro
  	redirect_to admin_login_path if cookies[:login_status] != 'ok'
  	@c = CompanyIntro.first || CompanyIntro.new
    if request.post?    	
    	@c.intro = params[:content]
    	@c.save
    	flash[:notice] = '增加或者新增企业简介成功！'    	
    end
    
  end

	def feature
		redirect_to admin_login_path if cookies[:login_status] != 'ok'
    if request.post?      
      @f = CompanyFeature.new
      @f.intro = params[:content]
      @f.save      
    end			
	end

	def feature_list
		@features = CompanyFeature.order('created_at desc')
	end


end