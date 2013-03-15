class MessagesController < ApplicationController
  before_filter :authenticate_user!
  
  def inbox
    @messages = current_user.received_messages
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
    #TODO: error-checking and error handling
    
    @recipient = User.find_by_id(params[:recipient_id])
    
    current_user.send_message(@recipient, "Re: " + params[:topic], params[:body])
    
    respond_to do |format|
      format.js {render :nothing => true}
    end
  end
  
  def delete_message
    #TODO: error-checking and error handling
    
    @message = current_user.received_messages.with_id(params[:id]).first
    current_user.delete_message(@message)
    
    respond_to do |format|
      format.html {redirect_to inbox_path}
    end
  end
end