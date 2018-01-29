class RegisterController < ApplicationController
  
  def index
    @info = User_apps.new
    @info.name = params[:name]
    @info.phone = params[:phone]
    @info.password = params[:password]
    
    @info.gender = params[:gender]
    @info.type = params[:type]
    
    @info.token = params[:token]
 
    @info.save
    
  end
  
end
