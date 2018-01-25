class CarCallController < ApplicationController
  layout "empty_layout"
  
  def status
      @status = "disavailable"
  end
  
end
