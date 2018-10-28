class MailboxController < ApplicationController
  def new_mail
  end

  def send_mail
    @from_mail = params[:from_mail]
    @to_mail = params[:to_mail]
    @title = params[:title]
    @content = params[:content]
  end
end
