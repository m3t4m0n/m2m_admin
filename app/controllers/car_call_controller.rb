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

    # 차량호출을 예약 신청한 사람의 정보 -> user_id를 얻어오기 위함
    request_user = Mobile.where("name = :name", :name => data_JSON['name'])

    request_info = Carreservrequest.new
    request_info.location = data_JSON['location']
    request_info.date = data_JSON['date']
    request_info.time = data_JSON['time']
    request_info.memo = data_JSON['memo']
    request_info.wheel = data_JSON['wheel']
    request_info.friend = data_JSON['friend']
    request_info.mobile_id = request_user[0].id

    render json: request_info.save




  end

end
