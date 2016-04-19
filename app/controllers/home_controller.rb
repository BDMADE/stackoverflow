class HomeController < ApplicationController
before_action :authorized?, except: :index
layout 'adminLayout' ,except: :index
	
  def index
  	@problems=Problem.paginate(:page => params[:page], :per_page => 3).order('created_at DESC')
  end

  def admin
  end
end

