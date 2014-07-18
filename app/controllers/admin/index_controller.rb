class Admin::IndexController < Admin::ApplicationController
	layout 'admin'

  def admin_login
    if request.post?
      if params[:pwd] == 'dashitou' 
        cookies[:login_status] = {
          :value => 'ok',
          :expires => Time.now + 1800
        }
        redirect_to admin_index_path 
      end
    else
    	render :layout => false
    end
    
  end

	def index
		redirect_to admin_login_path if cookies[:login_status] != 'ok'
		@cases = Case.order('id desc')	
	end

	def create
		redirect_to admin_login_path if cookies[:login_status] != 'ok'
		if request.post?
			c = Case.new
			brick = DfsUploader::Process.upload(params[:dfs_path], 'case', ratio: '3:4')
			c.dfs_path = brick.dfs_path
			c.name = params[:name]
			c.intro = params[:intro]
			c.save
			redirect_to admin_index_path
		end	
	end

	def destroy
		Case.find(params[:id]).destroy
		redirect_to admin_index_path
	end

end