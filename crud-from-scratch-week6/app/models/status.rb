class Status <ActiveRecord::Base

has_many :likes
  validates :message, :user, presence: true

end
