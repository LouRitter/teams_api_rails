class Meeting < ApplicationRecord

    def send_reminder(user)
        UserMailer.with(user: user, meeting: self).reminder_email.deliver_now
    
    end
end
