class Assignment < ApplicationRecord
  belongs_to :level
  has_many :submits
  belongs_to :user
  
end
