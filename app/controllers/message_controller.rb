require 'hipchat'

class MessageController < ApplicationController

  def hipchat
    @communication = Hipchat.post_communication(params[:color], params[:message], params[:notify], params[:message_format])
  end

end
