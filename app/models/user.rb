class User < ActiveRecord::Base
  include Authem::User
  validates_presence_of :email
  has_many :calendar_days
end
