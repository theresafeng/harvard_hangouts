class User < ActiveRecord::Base
  has_many :hangouts
  has_many :comments
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # unique username
  validates_uniqueness_of :username
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :year, :house, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  validates_presence_of :username, :year, :house, :password_confirmation
end
