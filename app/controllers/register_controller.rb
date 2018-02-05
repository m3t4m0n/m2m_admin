class RegisterController < ApplicationController
  layout "empty_layout"

  def index
    @info = Mobile.new
    info_item = request.raw_post
    data_JSON = JSON.parse(info_item)

    @info.name = data_JSON['name']
    @info.password = data_JSON['password']
    @info.gender = data_JSON['gender']
    @info.type = data_JSON['type']
    @info.phone = data_JSON['phone']
    # @info.token = data_JSON['token']

    @info.save

    @status = "disavailable"

    render json: @status

  end

end
