class CarCallController < ApplicationController
  layout "empty_layout"

  def status
      @status = "disavailable"
  end
  
  def pushMessage
    fcm = FCM.new(ENV['fcm_secret_key'])
    
    registration_ids = params[:token]
    
    options = {
      priority: "high",
      collapse_key: "push_test",
      notification: {
        title: "Message Title",
        body: "Hi, Worked perfectly"
      }
    }
    
    response = fcm.send(registration_ids, options)
    
  end
  
end
