class CreateSubmits < ActiveRecord::Migration[5.2]
  def change
    create_table :submits do |t|
      t.string :link
      t.references :user, foreign_key: true
      t.references :assignment, foreign_key: true

      t.timestamps
    end
  end
end
