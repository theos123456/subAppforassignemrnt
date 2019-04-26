class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :title
      t.integer :level_id
      t.date :min_date
      t.date :max_date
      t.string :keywords

      t.timestamps
    end
  end
end
