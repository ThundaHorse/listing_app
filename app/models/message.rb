class Message < ApplicationRecord
  belongs_to :user


  def formatted_time 
    created_at.strftime("%b %e, %l:%M %p")
  end 
end
