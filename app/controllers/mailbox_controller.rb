require 'mailgun-ruby'
class MailboxController < ApplicationController
  def new_mail
    # mail form
    # 메일을 작성하는 곳
  end

  def send_mail
    # 메일을 보내는 곳
    @from_mail = params[:from_mail]
    @to_mail = params[:to_mail]
    @title = params[:title]
    @content = params[:content]
    
    # 메일 DB에 저장 - create
    
    new1 = Webmail.new #저장할 공간 생성
    
    
    new1.from_m = @from_mail
    new1.to_m = @to_mail
    new1.title = @title
    new1.content = @content
    new1.save
    
    new1.from_m = @from_mail
    new1.to_m = @to_mail
    new1.title = @title
    new1.content = @content
    new1.save
    
    # First, instantiate the Mailgun Client with your API key
    mg_client = Mailgun::Client.new 'key-30e372ffcb8783cd5d469c05ba958326'
    
    # Define your message parameters
    message_params =  { from: @from_mail,
                        to:   @to_mail,
                        subject:  @title,
                        text: @content
                      }
    
    # Send your message through the client
    mg_client.send_message 'sandbox2420841a8b544023830e6488792c5038.mailgun.org', message_params
    
    new1.content ="hi"
    new1.save
    
    redirect_to '/mailbox/list'
  end
  
  def list
    
   @mail_all = Webmail.all
   
  end
end
