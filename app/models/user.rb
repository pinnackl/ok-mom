class User < ActiveRecord::Base

  has_many :tasks, foreign_key: "mother_id"
  has_many :tasks, foreign_key: "child_id"
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
  validates :role, presence: true
end
