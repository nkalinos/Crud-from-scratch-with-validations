class Status <ActiveRecord::Base


  validates :message, :user, presence: true

end
