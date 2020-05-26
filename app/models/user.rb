class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :assign_team

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
       has_many :projects
       belongs_to :team, optional: true
      


       def assign_team
    UserMailer.with(user: self).welcome_email.deliver_now
 
    @team = Team.create(name: self.email.split("@").last)
    self.team = @team
    self.save
  end


end
