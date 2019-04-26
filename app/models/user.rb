class User < ApplicationRecord
  belongs_to :level, class_name: "Level", foreign_key: "level_id"
  has_many :submits
  has_many :assignments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
