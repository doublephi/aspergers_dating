class MessagesController < ApplicationController
  before_filter :authenticate_user!
  
  def inbox
    @messages = current_user.received_messages
    @unread_messages = @messages.unreaded.count
  end
  
  def message
    @message = current_user.received_messages.with_id(params[:id]).first
    @message.mark_as_read
    @sender = User.find_by_id(@message.sent_messageable_id)
  end
  
  def send_message
    #TODO: error-checking and error handling
    
    @recipient = User.find_by_id(params[:recipient_id])
    
    current_user.send_message(@recipient, params[:topic], params[:body])

    respond_to do |format|
      format.js {render :nothing => true}
    end
  end
  
  def reply_message
    puts "--reply_message--"
    puts params.to_xml
    
    @recipient = User.find_by_id(params[:recipient_id])
    
    current_user.send_message(@recipient, "Re: " + params[:topic], params[:body])
    
    respond_to do |format|
      format.js {render :nothing => true}
    end
  end
end