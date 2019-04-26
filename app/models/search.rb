class Search < ApplicationRecord
belongs_to :level, class_name: "level", foreign_key: "level_id"
    def find_assignments
        assignments = Assignment.order(:title)
        assignments = Assignment.where("title like ?", "%#{ keywords}%" ) if keywords.present?
        assignments = Assignment.where(title: title) if title.present?
        assignments = Assignment.where(level_id: level_id) if level_id.present?
        assignments = Assignment.where("deadline <= ?", min_date) if min_date.present?
        assignments = Assignment.where("deadline >= ?", max_date) if max_date.present?
        assignments
    end
end
