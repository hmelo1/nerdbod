class Comment < ApplicationRecord
  belongs_to :plan
  belongs_to :user

  def username
    user =  User.find(self.user_id)
    user.email
  end
end
