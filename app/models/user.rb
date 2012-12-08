class User < ActiveRecord::Base
  has_many :hangouts
  has_many :comments
  
  # Include default devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # ensure username is unique
  validates_uniqueness_of :username
  
  # Setup accessible (or protected) attributes for User model
  attr_accessible :username, :email, :year, :house, :password, :password_confirmation, :remember_me
  
  # attr_accessible
  validates_presence_of :username, :year, :house, :password_confirmation
end
