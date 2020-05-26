class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
 
    def welcome_email
      @user = params[:user]
      @url  = 'http://example.com/login'
      mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
    def reminder_email
        @user = params[:user]
        @meeting = params[:meeting]
        @url  = 'http://example.com/login'
        mail(to: @user.email, subject: 'Event Reminder')
      end
end
