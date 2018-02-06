class UserController < ApplicationController
  def signup
    @signup = Mobile.new
    signup_item = request.raw_post
    data_JSON = JSON.parse(signup_item)

    @signup.name = data_JSON['name']
    @signup.password = data_JSON['password']
    @signup.gender = data_JSON['gender']
    @signup.role_type = data_JSON['type']
    @signup.phone = data_JSON['phone']
    @signup.token = data_JSON['token']

    @signup.save

    @status = "complete"
    render json: @status

  end

  def signin
    signin_item = request.raw_post
    data_JSON = JSON.parse(signin_item)

    check_flag = false
    user_info = Mobile.where("name = :name", :name => data_JSON['name']
    if(user_info[0].password == data_JSON['password'])
      check_flag = true
    else
      check_flag = false
    end

    render json: @check_flag

  end
end
