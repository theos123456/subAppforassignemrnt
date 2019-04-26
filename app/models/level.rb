class Level < ApplicationRecord
    has_many :users, class_name: "User", foreign_key: "user_id"
    has_many :assignments
    has_many :searches, class_name: "searche", foreign_key: "reference_id"
end
