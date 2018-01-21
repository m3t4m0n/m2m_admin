class CarCallController < ApplicationController
  layout "empty_layout"
  
  def status
      @status = "available"
  end
  
end
