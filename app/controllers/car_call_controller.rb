require 'fcm'

class CarCallController < ApplicationController
  layout "empty_layout"

  def status
      @status = "disavailable"
      render json: @status
  end

  def pushMessage
    fcm = FCM.new(ENV['fcm_secret_key'])

    # registration_ids = params[:token]

    # registration_ids = 'd__WsdU-YwQ:APA91bErWoFcTNz-XJIV_hreUh6qzzYg2Lffp0btonz_xt7tN-FX-o1lnVo-bvcehfCDcVMGqHJBREyMYPKlDVSATaxGfrbpLAw8CVa69Wyk1AqgbF82E0IOQ_65_Xtwh3IByFvBkKzN'

    # options = {
      # collapse_key: "push_test",
      # notification: {
        # title: "Message Title",
        # body: "Hi, Worked perfectly"
      # }
    # }

    # response = fcm.send(registration_ids, options)
    
    response = fcm.send_to_topic("car_call", data: { message: "This is a FCM car_call Message!" })
                
    @flag = response
    render json: response

  end
  
  def carReservRequest
    request_item = request.raw_post
    data_JSON = JSON.parse(request_item)
    
    request_info = Mobile.where("name = :name", :name => data_JSON['name'])
    
    
    
    
  end

end
