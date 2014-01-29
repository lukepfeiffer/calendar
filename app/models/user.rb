class User < ActiveRecord::Base
  include Authem::User
  validates_presence_of :email
end
