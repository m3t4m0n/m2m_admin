class RegisterController < ApplicationController

  def index
    @info = User_apps.new
    info_item = request.raw_post
    data_JSON = JSON.parse(info_item)

    @info.name = data_JSON['name']
    @info.password = data_JSON['password']
    @info.gender = data_JSON['gender']
    @info.type = data_JSON['type']
    @info.phone = data_JSON['phone']
    @info.token = data_JSON['token']

    @info.save

  end

end
