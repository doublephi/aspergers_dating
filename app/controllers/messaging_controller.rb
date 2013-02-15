class MessagingController < ApplicationController
  def inbox
    #@inbox = current_user.mailbox.receipts.where{(mailbox_type.eq "inbox")}
    @inbox = current_user.mailbox.inbox
    render :template => "messaging/inbox"
  end
  
  def show
    puts "-----show-----"
    puts params.to_xml
    puts "--------------"
    @id = params[:id]
    @messages = current_user.mailbox.conversations#.where{(id.eq @id)}
    puts "---message---"
    @messages.each do |m|
      if params[:id] == m.id.to_s
        @message = m.last_message
      end
    end
    puts @message
    puts "-------------"
    @sender = User.find_by_id(@message.sender_id).username
    render :template => "messaging/show"
  end
end