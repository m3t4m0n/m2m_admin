class UserController < ApplicationController
  def signup
    @signup = Mobile.new
    signup_item = request.raw_post
    data_JSON = JSON.parse(signup_item)

    @signup.name = data_JSON['name']
    @signup.password = data_JSON['password']
    @signup.gender = data_JSON['gender']
    @signup.type = data_JSON['type']
    @signup.phone = data_JSON['phone']
    @info.token = data_JSON['token']

    @signup.save

    @status = "complete"
    render json: @status

  end

  def signin
    signin_item = request.raw_post
    data_JSON = JSON.parse(signin_item)

    @signin_name = Mobile.exists?(["name like ?", "#{data_JSON['name']}"])
    @signin_password = Mobile.exists?(["password like ?", "#{data_JSON['password']}"])

    if @signin_name && @signin_password
      @check_flag = true
    else
      @check_flag = false
    end

    render json: @check_flag

  end
end
